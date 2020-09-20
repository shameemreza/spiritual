import 'package:flutter/cupertino.dart';
import 'package:spiritual/components/common/style/styles.dart';
import 'package:spiritual/menu/default_layout.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
        title: "SPIRITUAL",
        body:
            /** Comment out the block bellow to make an empty page */
            Container(
          child: Center(
            child: Text("Howdy!",
                style: TextStyle(
                    color: Styles.helperTextColor,
                    fontWeight: Styles.lightFont,
                    fontSize: Styles.h1)),
          ),
        ));
  }
}
