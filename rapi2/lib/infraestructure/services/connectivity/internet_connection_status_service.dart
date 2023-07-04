import 'package:injectable/injectable.dart';
//import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

@lazySingleton
class InternetConnectionStatusService {
  Future<bool> isConnected() {
    return InternetConnection().hasInternetAccess.catchError((e) {
      return false;
    });
  }
}
