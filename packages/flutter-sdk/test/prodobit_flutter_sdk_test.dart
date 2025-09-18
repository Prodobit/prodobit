import 'package:flutter_test/flutter_test.dart';
import 'package:prodobit_flutter_sdk/prodobit_flutter_sdk.dart';

void main() {
  group('Prodobit Flutter SDK', () {
    test('should export main classes', () {
      // Basic smoke test to ensure SDK exports work
      expect(ProdobitClient, isNotNull);
    });
    
    test('should create client instance', () {
      final client = ProdobitClient(
        baseUrl: 'https://test.example.com',
      );
      
      expect(client, isNotNull);
      expect(client.runtimeType, equals(ProdobitClient));
    });
    
    test('should create client with custom config', () {
      final client = ProdobitClient(
        baseUrl: 'https://test.example.com',
        enableLogging: true,
        timeout: const Duration(seconds: 60),
      );
      
      expect(client, isNotNull);
    });
  });
}