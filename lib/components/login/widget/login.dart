import 'package:flutter/material.dart';
import 'package:spiritual/components/common/button/form_button.dart';
import 'package:spiritual/components/common/input_field/custom_input_field.dart';
import 'package:spiritual/components/common/separator/separator.dart';
import 'package:spiritual/components/common/style/styles.dart';
import 'package:spiritual/components/common/validator/validators.dart';
import 'package:spiritual/routers/routes.dart';

class Login extends StatefulWidget {
  final String welcomeText;

  Login({this.welcomeText});

  @override
  LoginState createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  /// Title and Welcome text are defined under
//  final String title = "LOGIN";
//  final String welcomeText = 'Hello there, \nwelcome back.';

  //  _formKey and _autoValidate
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  String _username;
  String _password;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 32.0, vertical: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 5.0),
              child: Text(this.widget.welcomeText,
                  style: TextStyle(
                      color: Styles.helperTextColor,
                      fontSize: Styles.h1,
                      fontWeight: Styles.lightFont)),
            ),
            Form(
              key: _formKey,
              autovalidate: _autoValidate,
              child: Column(
                children: <Widget>[
                  /// USERNAME INPUT
                  /// ===============
                  CustomInputField(
                    hintText: 'Username',
                    validator: Validators.validateUsername,
                    onSaved: (String val) {
                      _username = val;
                      print(_username);
                    },
                    inputType: TextInputType.text,
                    margin: EdgeInsets.only(top: 28.0),
                  ),

                  /// PASSWORD INPUT
                  /// ===============
                  CustomInputField(
                    obscureText: true,
                    hintText: 'Password',
                    validator: Validators.generalValidate,
                    onSaved: (String val) {
                      _password = val;
                      print(_password);
                    },
                    inputType: null,
                    margin: EdgeInsets.only(top: 28.0),
                  ),
                  Separator(height: 50.0),

                  /// SIGN IN BUTTON
                  FormButton(
                    text: "SIGN IN",
                    onTap: _validateInputs,
                  ),
                  Separator(height: 20.0),
                  Center(
                      child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("FORGOT PASSWORD? ",
                              style: TextStyle(
                                  color: Styles.helperTextColor,
                                  fontSize: Styles.h5,
                                  fontWeight: Styles.lightFont)),
                          InkWell(
                            child: Container(
                                height: 40.0,
                                child: Center(
                                  child: Text("GET NEW!",
                                      style: TextStyle(
                                          color: Styles.helperTextColor,
                                          fontWeight: Styles.mediumFont,
                                          fontSize: Styles.h5)),
                                )),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Routes.forgotPassword),
                              );
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("DON'T HAVE AN ACCOUNT? ",
                              style: TextStyle(
                                  color: Styles.helperTextColor,
                                  fontSize: Styles.h5,
                                  fontWeight: Styles.lightFont)),
                          InkWell(
                            child: Container(
                                height: 40.0,
                                child: Center(
                                  child: Text("SIGN UP!",
                                      style: TextStyle(
                                          color: Styles.helperTextColor,
                                          fontWeight: Styles.mediumFont,
                                          fontSize: Styles.h5)),
                                )),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Routes.register),
                              );
                            },
                          ),
                        ],
                      )
                    ],
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _validateInputs() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
    } else {
      setState(() {
        _autoValidate = true;
      });
    }
  }
}
