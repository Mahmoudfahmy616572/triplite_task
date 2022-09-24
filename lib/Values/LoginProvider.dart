import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier // changeNotifier is the Observer
    {
  String?name;
  String?email;
  String?password;
  String?phoneNumber;
  bool isLoading = false;

  void setName(String value) {
    name = value;
    notifyListeners();
  }

  void setLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }

  void setEmail(String value) {
    email = value;
    notifyListeners();
  }

  void setPassword(String value) {
    password = value;
    notifyListeners();
  }


}


