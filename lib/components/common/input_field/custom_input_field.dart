import 'package:flutter/material.dart';
import 'package:spiritual/components/common/style/styles.dart';

class CustomInputField extends StatelessWidget {
  final hintText;
  final validator;
  final onSaved;
  final inputType;
  final margin;
  final obscureText;

  CustomInputField(
      {this.hintText,
      this.validator,
      this.onSaved,
      this.inputType,
      this.margin,
      this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: this.margin,
      child: TextFormField(
        cursorColor: Styles.helperTextColor,
        style: TextStyle(color: Styles.helperTextColor),
        obscureText: obscureText != null ? true : false,
        decoration: InputDecoration(
          errorStyle: TextStyle(color: Styles.helperTextColor),
          hintText: this.hintText,
          hintStyle: TextStyle(
              color: Styles.hintTextColor,
              fontWeight: Styles.lightFont,
              fontSize: Styles.h3),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Styles.hintTextColor)),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Styles.helperTextColor),
          ),
        ),
        keyboardType: inputType != null ? inputType : null,
        validator: this.validator,
        onSaved: this.onSaved,
      ),
    );
  }
}
