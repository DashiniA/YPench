import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class internetConnectionChecker with ChangeNotifier {
  bool _setnetworkState = false;
  bool get setnetworkState => _setnetworkState;

  initialization() async {
    await checkAvalabiliyt();
  }

  checkAvalabiliyt() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    print(connectivityResult);
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      _setnetworkState = true;
      print('has connection');
      notifyListeners();
    } else if (connectivityResult == ConnectivityResult.none) {
      _setnetworkState = false;
      print('no connectoin');
      notifyListeners();
    }
    print(_setnetworkState);
    notifyListeners();
  }
}
