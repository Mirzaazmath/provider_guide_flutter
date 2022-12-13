import 'package:flutter/cupertino.dart';

class SomeProvider extends ChangeNotifier{
  // this is a variable
  int _number=0;


  // here we are assigning the _number varaible to the getter
  get number=>_number;


  // this is a function for incrementing the _number value
  void increament(){
    // here we are increase the _number value with +1
    _number++;
    // this function  notify every lister that the value is change
    notifyListeners();
  }


}