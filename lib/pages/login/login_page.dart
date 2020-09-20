import 'package:flutter/material.dart';
import 'package:spiritual/components/login/widget/login.dart';
import 'package:spiritual/menu/default_layout.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
        backButton: true,
        title: "LOGIN",
        body: Login(welcomeText: 'Howdy, \nwelcome back.'));
  }
}
