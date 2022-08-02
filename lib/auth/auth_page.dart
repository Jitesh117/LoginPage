import 'package:flutter/material.dart';
import 'package:login_page/pages/login.dart';
import 'package:login_page/pages/register_page.dart';

class AuthPage extends StatefulWidget {
  AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => AuthPageState();
}

class AuthPageState extends State<AuthPage> {
  bool showLoginPage = true;
  void toggleScreens() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(showRegisterPage: toggleScreens);
    } else {
      return RegisterPage(showLoginPage: toggleScreens);
    }
  }
}
