import 'package:flutter_test/flutter_test.dart';
import 'package:rapi2/infraestructure/network/dio_provider.dart';


void main() {
  group('DioProvider', () {
    test('should set the correct base URL', () {
      // Arrange
      final dioProvider = DioProvider();

      // Assert
      expect(dioProvider.dio.options.baseUrl, equals('http://rapi2-dev.us-east-1.elasticbeanstalk.com/client'));
    });

    test('should set the correct auth token', () {
      // Arrange
      final dioProvider = DioProvider();
      const token = 'testToken';

      // Act
      dioProvider.setAuthToken(token);

      // Assert
      expect(dioProvider.dio.options.headers['Authorization'], equals('Bearer $token'));
    });
  });
}
