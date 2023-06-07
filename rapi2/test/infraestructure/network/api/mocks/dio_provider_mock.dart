import 'package:dio/dio.dart';
import 'package:mockito/mockito.dart';
import 'package:rapi2/infraestructure/network/dio_provider.dart';

import 'dio.mocks.dart';

class MockDioProvider implements DioProvider {

  late MockDio _dio;

  
  MockDioProvider() {
    _dio = MockDio();
    when(_dio.options).thenReturn(BaseOptions(
        baseUrl: baseUrl,
      ));
  }

  @override
  String get baseUrl => '';
  
  @override
  void setAuthToken(String token) {
    _dio.options.headers['Authorization'] = 'Bearer $token';
  }
  
  @override
  MockDio get dio => _dio;
}