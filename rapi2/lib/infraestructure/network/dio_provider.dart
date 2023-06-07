import 'package:dio/dio.dart';

///A class that provides a Dio instance with the base url set and allows to set the authorization token
class DioProvider {
  late Dio _dio;
  final String baseUrl = 'http://rapi2-dev.us-east-1.elasticbeanstalk.com/client';

  DioProvider() {
    _dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
      ),
    );
  }

  void setAuthToken(String token) {
    _dio.options.headers['Authorization'] = 'Bearer $token';
  }

  Dio get dio => _dio;
}
