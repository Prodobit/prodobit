import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:prodobit_flutter_sdk/core/api_client.dart';
import 'package:prodobit_flutter_sdk/exceptions/exceptions.dart';
import 'package:prodobit_flutter_sdk/models/models.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Authentication service for handling OTP-based login, logout, and token management
class AuthService {
  AuthService(this._apiClient) {
    _storage = const FlutterSecureStorage(
      aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
      ),
      iOptions: IOSOptions(
        accessibility: KeychainAccessibility.first_unlock_this_device,
      ),
    );
  }

  static const String _accessTokenKey = 'access_token';
  static const String _refreshTokenKey = 'refresh_token';
  static const String _userKey = 'user_data';

  static const String _orgKey = 'current_organization';
  final ApiClient _apiClient;
  late final FlutterSecureStorage _storage;
  late final SharedPreferences _prefs;

  /// Get the current tenant ID
  String? getCurrentTenantId() {
    return _prefs.getString(_orgKey);
  }

  /// Get cached user data
  Future<UserData?> getCachedUser() async {
    final userJson = _prefs.getString(_userKey);
    if (userJson == null) return null;

    try {
      final userMap = Map<String, dynamic>.from(
        // In a real implementation, you'd parse JSON properly
        {},
      );
      return UserData.fromJson(userMap);
    } catch (e) {
      return null;
    }
  }

  /// Initialize the service
  Future<void> initialize() async {
    _prefs = await SharedPreferences.getInstance();

    // Restore authentication state
    final accessToken = await _getAccessToken();
    if (accessToken != null) {
      _apiClient.setAuthToken(accessToken);

      // Restore organization context
      final orgId = _prefs.getString(_orgKey);
      if (orgId != null) {
        _apiClient.setOrganization(orgId);
      }
    }
  }

  /// Check if user is authenticated
  Future<bool> isAuthenticated() async {
    final token = await _getAccessToken();
    return token != null;
  }

  /// Logout and clear stored data
  Future<void> logout({bool allDevices = false}) async {
    try {
      // Call logout endpoint if token exists
      final accessToken = await _getAccessToken();
      if (accessToken != null) {
        await _apiClient.post(
          '/api/v1/auth/logout',
          data: {
            'allDevices': allDevices,
          },
        );
      }
    } catch (e) {
      // Ignore logout API errors, still clear local data
    } finally {
      // Clear all stored data
      await _clearStoredData();

      // Remove authorization headers
      _apiClient
        ..removeAuthToken()
        ..removeOrganization();
    }
  }

  /// Refresh authentication token
  Future<SessionData> refreshToken() async {
    final refreshToken = await _getRefreshToken();
    if (refreshToken == null) {
      throw AuthException.required();
    }

    try {
      final response = await _apiClient.post<Map<String, dynamic>>(
        '/api/v1/auth/refresh',
        data: {
          'refreshToken': refreshToken,
        },
      );

      final refreshResponse = LoginOTPResponse.fromJson(response);

      if (refreshResponse.success && refreshResponse.data != null) {
        // Update stored tokens
        await _storeTokens(
          accessToken: refreshResponse.data!.session.accessToken,
          refreshToken: refreshResponse.data!.session.refreshToken,
        );

        // Update API client authorization header
        _apiClient.setAuthToken(refreshResponse.data!.session.accessToken);

        return refreshResponse.data!.session;
      } else {
        throw AuthException.refreshFailed();
      }
    } catch (e) {
      if (e is ApiException && e.statusCode == 401) {
        // Refresh token is invalid, user needs to login again
        await logout();
        throw AuthException.refreshFailed();
      }
      rethrow;
    }
  }

  /// Request OTP for email login
  Future<OTPResponse> requestOTP({
    required String email,
    String? tenantId,
  }) async {
    try {
      print('🚀 AuthService.requestOTP called');
      print('   Email: $email');
      print('   TenantId: $tenantId');

      final response = await _apiClient.post<Map<String, dynamic>>(
        '/api/v1/auth/request-otp',
        data: {
          'email': email,
          if (tenantId != null) 'tenantId': tenantId,
        },
      );

      print('✅ AuthService.requestOTP API response received');
      print('   Response: $response');

      final otpResponse = OTPResponse.fromJson(response);
      print('✅ AuthService.requestOTP parsed response');
      print('   Success: ${otpResponse.success}');
      print('   Message: ${otpResponse.message}');
      print('   ExpiresAt: ${otpResponse.expiresAt}');
      print(
          '   RequiresTenantSelection: ${otpResponse.requiresTenantSelection}',);
      print('   DefaultTenantId: ${otpResponse.defaultTenantId}');
      print('   SelectedTenantId: ${otpResponse.selectedTenantId}');
      print('   Tenants: ${otpResponse.tenants?.length}');

      return otpResponse;
    } on ProdobitException {
      rethrow;
    } catch (e) {
      print('❌ AuthService.requestOTP error: $e');
      throw AuthException(
        'Failed to request OTP: $e',
        code: 'OTP_REQUEST_ERROR',
      );
    }
  }

  /// Resend OTP for email
  Future<OTPResponse> resendOTP({
    required String email,
  }) async {
    try {
      final response = await _apiClient.post<Map<String, dynamic>>(
        '/api/v1/auth/resend-otp',
        data: {
          'email': email,
        },
      );

      return OTPResponse.fromJson(response);
    } on ProdobitException {
      rethrow;
    } catch (e) {
      throw AuthException(
        'Failed to resend OTP: $e',
        code: 'OTP_RESEND_ERROR',
      );
    }
  }

  /// Set the current tenant ID
  Future<void> setCurrentTenantId(String tenantId) async {
    await _prefs.setString(_orgKey, tenantId);
    _apiClient.setOrganization(tenantId);
  }

  /// Verify OTP and login
  Future<LoginOTPResponse> verifyOTP({
    required String email,
    required String code,
    String? tenantId,
  }) async {
    try {
      final response = await _apiClient.post<Map<String, dynamic>>(
        '/api/v1/auth/verify-otp',
        data: {
          'email': email,
          'code': code,
          if (tenantId != null) 'tenantId': tenantId,
        },
      );

      final loginResponse = LoginOTPResponse.fromJson(response);

      // Store tokens securely if login successful
      if (loginResponse.success && loginResponse.data != null) {
        await _storeTokens(
          accessToken: loginResponse.data!.session.accessToken,
          refreshToken: loginResponse.data!.session.refreshToken,
        );

        // Store user data
        await _storeUserData(loginResponse.data!.user);

        // Update API client with new token
        _apiClient.setAuthToken(loginResponse.data!.session.accessToken);

        // Store organization context if available
        if (loginResponse.data!.tenantMemberships?.isNotEmpty ?? false) {
          final membership = loginResponse.data!.tenantMemberships!.first;
          _apiClient.setOrganization(membership.tenantId);
          await _prefs.setString(_orgKey, membership.tenantId);
        }
      }

      return loginResponse;
    } on ProdobitException {
      rethrow;
    } catch (e) {
      throw AuthException(
        'OTP verification failed: $e',
        code: 'OTP_VERIFY_ERROR',
      );
    }
  }

  /// Clear all stored authentication data
  Future<void> _clearStoredData() async {
    await _storage.deleteAll();
    await _prefs.remove(_userKey);
    await _prefs.remove(_orgKey);
  }

  /// Get stored access token
  Future<String?> _getAccessToken() async {
    return _storage.read(key: _accessTokenKey);
  }

  /// Get stored refresh token
  Future<String?> _getRefreshToken() async {
    return _storage.read(key: _refreshTokenKey);
  }

  /// Store authentication tokens securely
  Future<void> _storeTokens({
    required String accessToken,
    String? refreshToken,
  }) async {
    await _storage.write(key: _accessTokenKey, value: accessToken);
    if (refreshToken != null) {
      await _storage.write(key: _refreshTokenKey, value: refreshToken);
    }
  }

  /// Store user data
  Future<void> _storeUserData(UserData user) async {
    await _prefs.setString(_userKey, user.toJson().toString());
  }

  /// Check user before OTP request
  Future<Map<String, dynamic>> checkUser({
    required String email,
  }) async {
    try {
      print('🔍 AuthService.checkUser called');
      print('   Email: $email');
      
      final response = await _apiClient.post<Map<String, dynamic>>(
        '/api/v1/auth/check-user',
        data: {
          'email': email,
        },
      );
      
      print('✅ AuthService.checkUser response received');
      return response;
    } on ProdobitException {
      rethrow;
    } catch (e) {
      print('❌ AuthService.checkUser error: $e');
      throw AuthException(
        'Failed to check user: $e',
        code: 'CHECK_USER_ERROR',
      );
    }
  }

  /// Register new tenant with user
  Future<Map<String, dynamic>> registerTenant({
    required String email,
    required String tenantName,
    required String firstName,
    required String lastName,
    String? companyName,
  }) async {
    try {
      print('🏢 AuthService.registerTenant called');
      print('   Email: $email');
      print('   TenantName: $tenantName');
      
      final response = await _apiClient.post<Map<String, dynamic>>(
        '/api/v1/auth/register-tenant',
        data: {
          'email': email,
          'tenantName': tenantName,
          'firstName': firstName,
          'lastName': lastName,
          if (companyName != null) 'companyName': companyName,
        },
      );
      
      print('✅ AuthService.registerTenant response received');
      return response;
    } on ProdobitException {
      rethrow;
    } catch (e) {
      print('❌ AuthService.registerTenant error: $e');
      throw AuthException(
        'Failed to register tenant: $e',
        code: 'REGISTER_TENANT_ERROR',
      );
    }
  }

  /// Send verification email
  Future<Map<String, dynamic>> sendVerificationEmail({
    required String email,
  }) async {
    try {
      print('📧 AuthService.sendVerificationEmail called');
      
      final response = await _apiClient.post<Map<String, dynamic>>(
        '/api/v1/auth/send-verification-email',
        data: {
          'email': email,
        },
      );
      
      print('✅ AuthService.sendVerificationEmail response received');
      return response;
    } on ProdobitException {
      rethrow;
    } catch (e) {
      print('❌ AuthService.sendVerificationEmail error: $e');
      throw AuthException(
        'Failed to send verification email: $e',
        code: 'SEND_VERIFICATION_ERROR',
      );
    }
  }

  /// Verify email with token
  Future<Map<String, dynamic>> verifyEmail({
    required String token,
  }) async {
    try {
      print('✅ AuthService.verifyEmail called');
      
      final response = await _apiClient.post<Map<String, dynamic>>(
        '/api/v1/auth/verify-email',
        data: {
          'token': token,
        },
      );
      
      print('✅ AuthService.verifyEmail response received');
      return response;
    } on ProdobitException {
      rethrow;
    } catch (e) {
      print('❌ AuthService.verifyEmail error: $e');
      throw AuthException(
        'Failed to verify email: $e',
        code: 'VERIFY_EMAIL_ERROR',
      );
    }
  }

  /// Check verification status
  Future<Map<String, dynamic>> checkVerificationStatus({
    required String email,
  }) async {
    try {
      print('🔍 AuthService.checkVerificationStatus called');
      
      final response = await _apiClient.post<Map<String, dynamic>>(
        '/api/v1/auth/check-verification-status',
        data: {
          'email': email,
        },
      );
      
      print('✅ AuthService.checkVerificationStatus response received');
      return response;
    } on ProdobitException {
      rethrow;
    } catch (e) {
      print('❌ AuthService.checkVerificationStatus error: $e');
      throw AuthException(
        'Failed to check verification status: $e',
        code: 'CHECK_VERIFICATION_ERROR',
      );
    }
  }

  /// Get current user (me endpoint)
  Future<UserData> getCurrentUser() async {
    try {
      print('👤 AuthService.getCurrentUser called');
      
      final response = await _apiClient.get<Map<String, dynamic>>(
        '/api/v1/auth/me',
      );
      
      print('✅ AuthService.getCurrentUser response received');
      return UserData.fromJson(response);
    } on ProdobitException {
      rethrow;
    } catch (e) {
      print('❌ AuthService.getCurrentUser error: $e');
      throw AuthException(
        'Failed to get current user: $e',
        code: 'GET_CURRENT_USER_ERROR',
      );
    }
  }
}
