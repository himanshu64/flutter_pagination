
import 'package:connectivity_plus/connectivity_plus.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl extends NetworkInfo {
  final Connectivity connectivity;

  NetworkInfoImpl({required this.connectivity});

  @override
  Future<bool> get isConnected async {
    List<ConnectivityResult> result = await connectivity.checkConnectivity();
    if (result.contains(ConnectivityResult.mobile)  ||
        result.contains(ConnectivityResult.wifi) ) {
      return true;
    } else {
      return false;
    }
  }
}
