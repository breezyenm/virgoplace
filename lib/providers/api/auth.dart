import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:virgoplace/providers/data/auth_provider.dart';

import '../../screens/home/home.dart';

class AuthAPI extends ChangeNotifier {
  String url = 'https://vigoplace-server.herokuapp.com/api';

  Future register({required BuildContext context}) async {
    AuthProvider authProvider =
        Provider.of<AuthProvider>(context, listen: false);
    try {
      authProvider.loading = true;
      http.Response response = await http.post(
        Uri.parse('$url/auth/register'),
        body: {
          'username': authProvider.usernameController.text,
          'email': authProvider.emailController.text,
          'fullname': authProvider.fullNameController.text,
          'dob': authProvider.dobController.text,
          'password': authProvider.passwordController.text,
        },
      );
      print(response.body);
      if (response.statusCode == 200) {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const Home(),
          ),
          (route) => false,
        );
      }
      authProvider.loading = false;
    } on Exception {
      authProvider.loading = false;
    } catch (e) {
      authProvider.loading = false;
    }
  }

  Future login({required BuildContext context}) async {
    AuthProvider authProvider =
        Provider.of<AuthProvider>(context, listen: false);
    try {
      authProvider.loading = true;
      http.Response response = await http.post(
        Uri.parse('$url/auth/login'),
        body: {
          'username': authProvider.usernameController.text,
          'password': authProvider.passwordController.text,
        },
      );
      print(response.body);
      if (response.statusCode == 200) {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const Home(),
          ),
          (route) => false,
        );
      }
      authProvider.loading = false;
    } on Exception {
      authProvider.loading = false;
    } catch (e) {
      authProvider.loading = false;
    }
  }
}