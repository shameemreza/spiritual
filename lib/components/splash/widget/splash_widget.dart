import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spiritual/components/common/style/StylePadding.dart';
import 'package:spiritual/components/common/style/styles.dart';

class SplashWidget extends StatelessWidget {
  final title;
  final image;

  SplashWidget({this.title, this.image});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(gradient: Styles.gradient),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      this.image,
                      width: 120.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: StylePadding.MEDIUM),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircularProgressIndicator(
                    backgroundColor: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                  ),
                  Text(
                    this.title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
