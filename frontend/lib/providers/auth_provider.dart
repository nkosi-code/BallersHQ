import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {

  String role = 'guest';

  bool loggedIn = false;

  void login(String newRole) {

    role = newRole;

    loggedIn = true;

    notifyListeners();
  }

  void logout() {

    role = 'guest';

    loggedIn = false;

    notifyListeners();
  }
}