import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
class Authentication extends ChangeNotifier{

   Map response = {};
  int state = 0;

  void getPhoneNumber() async{
    final deviceInfoPlugin = DeviceInfoPlugin();
    final deviceInfo = await deviceInfoPlugin.deviceInfo;
    final map = deviceInfo.toMap();
    response = map;
    state  = 1;
    notifyListeners();
  }
}

class Auth{}