import 'package:prodobit_flutter_sdk/core/api_client.dart';
import 'package:prodobit_flutter_sdk/core/prodobit_config.dart';
import 'package:prodobit_flutter_sdk/services/services.dart';

/// Main Prodobit client for accessing all SDK functionality
class ProdobitClient {
  /// Create a new Prodobit client instance
  factory ProdobitClient({
    required String baseUrl,
    String apiVersion = 'v1',
    Duration timeout = const Duration(seconds: 30),
    bool enableLogging = false,
    Map<String, String> headers = const {},
  }) {
    final config = ProdobitConfig(
      baseUrl: baseUrl,
      apiVersion: apiVersion,
      timeout: timeout,
      enableLogging: enableLogging,
      headers: headers,
    );

    return ProdobitClient._(config);
  }

  /// Create client with custom configuration
  factory ProdobitClient.withConfig(ProdobitConfig config) {
    return ProdobitClient._(config);
  }

  ProdobitClient._(this.config) {
    _apiClient = ApiClient(config);
    _initializeServices();
  }

  final ProdobitConfig config;
  late final ApiClient _apiClient;

  // Services
  late final AuthService auth;
  late final UserService user;
  late final InventoryService inventory;
  late final LocationService location;
  late final PartyService party;
  late final SalesService sales;
  late final ManufacturingService manufacturing;
  late final PurchaseService purchase;
  late final AssetService asset;
  late final AssetIssueService assetIssue;
  late final MaintenanceService maintenance;
  late final CalibrationService calibration;
  late final TaskService task;
  late final FileService file;
  late final TenantService tenant;
  late final EmployeeService employee;

  /// Get the underlying API client (for advanced usage)
  ApiClient get apiClient => _apiClient;

  /// Clear authentication
  void clearAuth() {
    _apiClient
      ..removeAuthToken()
      ..removeOrganization();
  }

  /// Initialize the client (call this on app start)
  Future<void> initialize() async {
    await auth.initialize();
  }

  /// Set authentication token manually
  void setAuthToken(String token) {
    _apiClient.setAuthToken(token);
  }

  /// Set organization context
  void setOrganization(String organizationId) {
    _apiClient.setOrganization(organizationId);
  }

  /// Update client configuration
  ProdobitClient updateConfig(ProdobitConfig newConfig) {
    return ProdobitClient._(newConfig);
  }

  /// Initialize all services
  void _initializeServices() {
    auth = AuthService(_apiClient);
    user = UserService(_apiClient);
    inventory = InventoryService(_apiClient);
    location = LocationService(_apiClient);
    party = PartyService(_apiClient);
    sales = SalesService(_apiClient);
    manufacturing = ManufacturingService(_apiClient);
    purchase = PurchaseService(_apiClient);
    asset = AssetService(_apiClient);
    assetIssue = AssetIssueService(_apiClient);
    maintenance = MaintenanceService(_apiClient);
    calibration = CalibrationService(_apiClient);
    task = TaskService(_apiClient);
    file = FileService(_apiClient);
    tenant = TenantService(_apiClient);
    employee = EmployeeService(_apiClient);
  }
}
