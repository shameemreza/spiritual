import 'package:flutter/material.dart';
import 'package:spiritual/components/common/button/form_button.dart';
import 'package:spiritual/components/common/input_field/custom_input_field.dart';
import 'package:spiritual/components/common/separator/separator.dart';
import 'package:spiritual/components/common/style/styles.dart';
import 'package:spiritual/components/common/validator/validators.dart';
import 'package:spiritual/routers/routes.dart';

class ForgotPassword extends StatefulWidget {
  final welcomeText;

  ForgotPassword({this.welcomeText});

  @override
  ForgotPasswordState createState() {
    return ForgotPasswordState();
  }
}

class ForgotPasswordState extends State<ForgotPassword> {
  //  _formKey and _autoValidate
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  String _email;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 28.0, vertical: 32.0),
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
                  CustomInputField(
                    hintText: 'Username',
                    validator: Validators.validateUsername,
                    onSaved: (String val) {
                      _email = val;
                      print(_email);
                    },
                    inputType: TextInputType.text,
                    margin: EdgeInsets.only(top: 28.0),
                  ),
                  Separator(height: 50.0),

                  /// BUTTON
                  FormButton(
                    text: "RESET",
                    onTap: _validateInputs,
                  ),
                  Separator(height: 20.0),
                  Center(
                      child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("ALREADY HAVE AN ACCOUNT? ",
                              style: TextStyle(
                                  color: Styles.helperTextColor,
                                  fontSize: Styles.h5,
                                  fontWeight: Styles.lightFont)),
                          InkWell(
                            child: Container(
                                height: 40.0,
                                child: Center(
                                  child: Text("LOG IN!",
                                      style: TextStyle(
                                          color: Styles.helperTextColor,
                                          fontWeight: Styles.mediumFont,
                                          fontSize: Styles.h5)),
                                )),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Routes.login),
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
