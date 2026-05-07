import 'package:flutter/material.dart';

class AuthViewModel extends ChangeNotifier {
  bool isLogged = false;

  void login() {
    isLogged = true;
    notifyListeners();
  }
}