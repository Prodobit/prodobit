import 'package:prodobit_flutter_sdk/core/api_client.dart';
import 'package:prodobit_flutter_sdk/models/models.dart';

/// Service for file upload and management
class FileService {
  const FileService(this._apiClient);

  final ApiClient _apiClient;

  /// Delete file
  Future<void> deleteFile(String fileId) async {
    await _apiClient.delete('/files/$fileId');
  }

  /// Get file info by ID
  Future<FileUploadResponse> getFile(String fileId) async {
    final response =
        await _apiClient.get<Map<String, dynamic>>('/files/$fileId');
    return FileUploadResponse.fromJson(response);
  }

  /// List files
  Future<PaginatedResponse<FileUploadResponse>> listFiles({
    QueryParams? query,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/files',
      queryParameters: query?.toQueryMap(),
    );

    return PaginatedResponse.fromJson(
      response,
      (json) => FileUploadResponse.fromJson(json! as Map<String, dynamic>),
    );
  }

  /// Upload a file
  Future<FileUploadResponse> uploadFile(
    String filePath, {
    String fieldName = 'file',
    Map<String, dynamic>? metadata,
    void Function(double progress)? onProgress,
  }) async {
    final response = await _apiClient.uploadFile<Map<String, dynamic>>(
      '/files/upload',
      filePath,
      fieldName: fieldName,
      additionalData: metadata,
      onProgress: (sent, total) {
        if (onProgress != null && total > 0) {
          onProgress(sent / total);
        }
      },
    );

    return FileUploadResponse.fromJson(response);
  }
}
