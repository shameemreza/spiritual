import 'package:flutter/material.dart';
import 'package:spiritual/components/register/widget/register.dart';
import 'package:spiritual/menu/default_layout.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
        backButton: true,
        title: "REGISTER",
        body: Register(welcomeText: 'Welcome, \nsign up now.'));
  }
}
