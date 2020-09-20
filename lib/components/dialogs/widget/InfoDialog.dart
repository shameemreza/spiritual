import 'package:flutter/material.dart';
import 'package:spiritual/components/common/style/styles.dart';

class InfoDialog extends StatelessWidget {
  final String title;
  final String description;
  final String positiveButton;
  final Function onPress;

  InfoDialog({this.title, this.description, this.positiveButton, this.onPress});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        this.title,
        style: TextStyle(
            color: Styles.primaryFontColor, fontWeight: Styles.lightFont),
      ),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text(
              this.description,
              style: TextStyle(
                  color: Styles.secondaryFontColor,
                  fontWeight: Styles.lightFont,
                  fontSize: Styles.h4),
              textAlign: TextAlign.center,
              softWrap: true,
            ),
          ],
        ),
      ),
      actions: <Widget>[
        FlatButton(child: Text(positiveButton), onPressed: onPress),
      ],
    );
  }
}
