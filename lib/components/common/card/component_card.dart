import 'package:flutter/material.dart';
import 'package:spiritual/components/common/style/styles.dart';

class ComponentCard extends StatelessWidget {
  final text;
  final icon;
  final route;
  final margin;
  final onTap;

  ComponentCard({this.text, this.icon, this.route, this.margin, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.only(top: 50.0),
        height: 200.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Styles.primaryFontColor, boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.2),
              offset: Offset(0, 4),
              blurRadius: 10.0)
        ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(
              icon,
              size: 70.0,
              color: Color.fromRGBO(255, 255, 255, 0.6),
            ),
            Container(
                height: 40.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Center(
                  child: Text(
                    text,
                    style: TextStyle(
                      color: Styles.primaryFontColor,
                      fontSize: Styles.h4,
                      fontWeight: Styles.mediumFont,
                    ),
                  ),
                ))
          ],
        ),
      ),
      onTap: () {
        onTap == null
            ? Navigator.push(
                context, MaterialPageRoute(builder: (context) => route))
            : onTap();
      },
    );
  }
}
