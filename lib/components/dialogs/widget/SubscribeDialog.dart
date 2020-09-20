import 'package:flutter/material.dart';
import 'package:spiritual/components/common/style/styles.dart';
import 'package:spiritual/components/common/validator/validators.dart';

class SubscribeDialog extends StatefulWidget {
  final String title;
  final String hintText;
  final String buttonText;
  final Function onPress;

  SubscribeDialog({this.title, this.hintText, this.buttonText, this.onPress});

  @override
  _SubscribeDialogState createState() => _SubscribeDialogState();
}

class _SubscribeDialogState extends State<SubscribeDialog> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _autoValidate = false;
  bool valid;
  String _email;

  void _validateInputs() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      setState(() {
        valid = true;
      });
    } else {
      setState(() {
        valid = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        this.widget.title,
        style: TextStyle(
            color: Styles.primaryFontColor, fontWeight: Styles.lightFont),
      ),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Form(
              key: _formKey,
              autovalidate: _autoValidate,
              child: TextFormField(
                validator: Validators.validateEmail,
                onSaved: (String val) {
                  _email = val;
                  print(_email);
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: this.widget.hintText,
                    hintStyle: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.2))),
              ),
            )
          ],
        ),
      ),
      actions: <Widget>[
        Container(
          width: 100.0,
          decoration: BoxDecoration(
              color: Styles.primaryFontColor,
              borderRadius: BorderRadius.circular(6.0)),
          child: RaisedButton(
            padding: EdgeInsets.all(0.0),
            color: Colors.transparent,
            elevation: 0.0,
            child: Text(
              this.widget.buttonText,
              style: TextStyle(color: Styles.helperTextColor),
            ),
            onPressed: () {
              _validateInputs();
              if (valid == true) {
                this.widget.onPress();
              }
            },
          ),
        )
      ],
    );
  }
}
