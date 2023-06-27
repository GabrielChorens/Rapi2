import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

///A class that provides a Dio instance with the base url set and allows to set the authorization token
@lazySingleton
class DioProvider {
  final dio = Dio(BaseOptions(
      baseUrl: 'http://rapi2-dev.us-east-1.elasticbeanstalk.com/client'));

  void setHeader(String? authToken) {
    if (authToken != null) {
      dio.options.headers['Authorization'] = 'Bearer $authToken';
    }
  }

  void removeHeader() {
    dio.options.headers.remove('Authorization');
  }
}
