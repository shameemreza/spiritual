import 'package:flutter/material.dart';
import 'package:spiritual/components/common/separator/separator.dart';
import 'package:spiritual/components/common/style/styles.dart';

class RatesCard extends StatelessWidget {
  final text1;
  final text2;
  final rateText;
  final image;

  RatesCard({this.text1, this.text2, this.rateText, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.2),
              blurRadius: 4,
              offset: Offset(0, 4))
        ]),
        child: Stack(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset(
                  image,
                  height: 150.0,
                  width: 150.0,
                  fit: BoxFit.cover,
                ),
                Expanded(
                  child: Container(
                    height: 150.0,
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          text1,
                          style: TextStyle(
                              color: Styles.primaryFontColor,
                              fontSize: Styles.h3,
                              fontWeight: Styles.lightFont),
                        ),
                        Text(
                          text2,
                          style: TextStyle(
                              color: Styles.secondaryFontColor,
                              fontSize: Styles.h5,
                              fontWeight: Styles.lightFont),
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.star_border,
                              size: Styles.h4,
                            ),
                            Separator(width: 5.0),
                            Text(
                              rateText,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: Styles.h4,
                                  fontWeight: Styles.lightFont),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Positioned(
                top: 5.0,
                right: 5.0,
                child: Image.asset('assets/images/drag_lines.png'))
          ],
        ));
  }
}
