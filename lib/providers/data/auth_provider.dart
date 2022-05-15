import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  bool _loading = false;
  bool get loading => _loading;
  set loading(bool val) {
    _loading = val;
    notifyListeners();
  }

  clear() {
    fullNameController.clear();
    usernameController.clear();
    emailController.clear();
    passwordController.clear();
    dobController.clear();
    confirmPasswordController.clear();
  }
}
