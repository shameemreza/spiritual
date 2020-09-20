import 'package:flutter/material.dart';
import 'package:spiritual/components/common/style/styles.dart';

class WarningDialog extends StatelessWidget {
  final String title;
  final String description;
  final String positiveButton;
  final String negativeButton;
  final Function positivePress;
  final Function negativePress;

  WarningDialog(
      {this.title,
      this.description,
      this.positiveButton,
      this.negativeButton,
      this.positivePress,
      this.negativePress});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.all(0.0),
      content: Container(
        height: 300.0,
        child: Column(
          children: <Widget>[
            Container(
              height: 100.0,
              decoration: BoxDecoration(
                color: Styles.primaryFontColor,
              ),
              child: Center(
                child: Icon(
                  Icons.warning,
                  color: Colors.white,
                  size: 50.0,
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      this.title,
                      style: TextStyle(
                          color: Styles.primaryFontColor,
                          fontWeight: Styles.lightFont,
                          fontSize: Styles.h2),
                    ),
                    Text(
                      this.description,
                      style: TextStyle(
                          color: Styles.secondaryFontColor,
                          fontWeight: Styles.lightFont,
                          fontSize: Styles.h3),
                      textAlign: TextAlign.center,
                      softWrap: true,
                    )
                  ],
                )),
              ),
            )
          ],
        ),
      ),
      actions: <Widget>[
        FlatButton(child: Text(positiveButton), onPressed: positivePress),
        FlatButton(child: Text(negativeButton), onPressed: negativePress),
      ],
    );
  }
}
