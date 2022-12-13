import 'package:flutter/cupertino.dart';

class SomeProvider3 extends ChangeNotifier{
  int _lastvalue=0;
  get lastvalue=>_lastvalue;
  void lastincremt(){
    _lastvalue++;
    notifyListeners();
  }
}