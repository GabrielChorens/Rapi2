import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class InternetConnectionStatusService{

  final Connectivity _connectivity;
  
  InternetConnectionStatusService(this._connectivity);

  Future<bool> get isConnected async {
    final connectivityResult = await _connectivity.checkConnectivity();
    if (connectivityResult == ConnectivityResult.mobile || connectivityResult == ConnectivityResult.wifi) {
      return true;
    }
    else{
      return false;
    }
  }
}