import 'package:flutter/cupertino.dart';

class SonmeProvider2 extends ChangeNotifier{
  int _anothernuber=0;
  get anothernumber=>_anothernuber;
  void anotherincrement(){
    _anothernuber++;
    notifyListeners();
  }
}