import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerProvider extends ChangeNotifier{
  bool Sw = false;
  ThemeMode t = ThemeMode.light;
  void SwTHeme(bool s)
  {
    Sw = s;
    if(Sw==false)
    {
      t = ThemeMode.light;
    }
    else
    {
      t = ThemeMode.dark;
    }
    notifyListeners();
  }
}