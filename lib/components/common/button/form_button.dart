import 'package:flutter/material.dart';
import 'package:spiritual/components/common/style/styles.dart';

class FormButton extends StatelessWidget {
  final onTap;
  final text;

  FormButton({this.onTap, this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: new Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.2),
                  blurRadius: 8.0,
                  offset: Offset(0, 4))
            ]),
        height: 56.0,
        child: new Material(
          child: new InkWell(
              onTap: this.onTap,
              child: Center(
                  child: Text(this.text,
                      style: TextStyle(
                          color: Styles.primaryFontColor,
                          fontSize: Styles.h4,
                          fontWeight: Styles.mediumFont)))),
          color: Colors.transparent,
        ),
      ),
    );
  }
}
