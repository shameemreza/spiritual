import 'package:flutter/material.dart';
import 'package:spiritual/components/common/button/form_button.dart';
import 'package:spiritual/components/common/input_field/custom_input_field.dart';
import 'package:spiritual/components/common/separator/separator.dart';
import 'package:spiritual/components/common/style/styles.dart';
import 'package:spiritual/components/common/validator/validators.dart';
import 'package:spiritual/routers/routes.dart';
import 'package:spiritual/settings/Settings.dart';

class Register extends StatefulWidget {
  final welcomeText;

  Register({this.welcomeText});

  @override
  RegisterState createState() {
    return RegisterState();
  }
}

class RegisterState extends State<Register> {
  /// title and welcome text are set here
//  final String title = "REGISTER";
//  final String welcomeText = 'Welcome, \nsign up now.';

  //  _formKey and _autoValidate
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  String _username;
  String _email;
  String _password;
  String _country;
  String _zipCode;

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
                  ///USERNAME INPUT
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

                  /// EMAIL INPUT
                  CustomInputField(
                    hintText: 'Email',
                    validator: Validators.validateEmail,
                    onSaved: (String val) {
                      _email = val;
                      print(_email);
                    },
                    inputType: TextInputType.emailAddress,
                    margin: EdgeInsets.only(top: 28.0),
                  ),

                  /// PASSWORD INPUT
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      /// COUNTRY INPUT
                      Expanded(
                        child: CustomInputField(
                            hintText: 'Country',
                            validator: Validators.generalValidate,
                            onSaved: (String val) {
                              _country = val;
                              print(_country);
                            },
                            inputType: TextInputType.text,
                            margin: Settings.rtl
                                ? EdgeInsets.only(top: 28.0, left: 20.0)
                                : EdgeInsets.only(top: 28.0, right: 20.0)),
                      ),

                      /// ZIP CODE INPUT
                      Expanded(
                        child: CustomInputField(
                            hintText: 'Zip Code',
                            validator: Validators.generalValidate,
                            onSaved: (String val) {
                              _zipCode = val;
                              print(_zipCode);
                            },
                            inputType: TextInputType.number,
                            margin: Settings.rtl
                                ? EdgeInsets.only(top: 28.0, right: 20.0)
                                : EdgeInsets.only(top: 28.0, left: 20.0)),
                      )
                    ],
                  ),
                  Separator(height: 50.0),

                  /// SIGN UP BUTTON
                  FormButton(
                    text: "SIGN UP",
                    onTap: _validateInputs,
                  ),
                  Separator(height: 20.0),
                  Center(
                      child: Row(
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
