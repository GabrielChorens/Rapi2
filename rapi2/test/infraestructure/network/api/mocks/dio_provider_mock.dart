import 'package:rapi2/infraestructure/network/dio_provider.dart';

import 'dio.mocks.dart';

class MockDioProvider implements DioProvider {

  @override
  MockDio dio = MockDio();
  
  @override
  void removeHeader() {
    // TODO: implement removeHeader
  }
  
  @override
  void setHeader(String? authToken) {
    // TODO: implement setHeader
  }

}
