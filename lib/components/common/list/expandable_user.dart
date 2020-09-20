import 'package:flutter/material.dart';
import 'package:spiritual/components/common/style/styles.dart';

class ExpandableUser extends StatelessWidget {
  final username;
  final description;
  final year;
  final firstLine;
  final secondLine;
  final image;
  final rtl;

  ExpandableUser(
      {this.username,
      this.description,
      this.year,
      this.firstLine,
      this.secondLine,
      this.image,
      this.rtl});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 3.0),
        padding: EdgeInsets.symmetric(vertical: 15.0),
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.2),
              offset: Offset(0, 2),
              blurRadius: 4.0)
        ]),
        child: Column(
          children: <Widget>[
            ExpansionTile(
                leading: Container(
                    width: 60.0,
                    margin: rtl
                        ? EdgeInsets.only(left: 20.0)
                        : EdgeInsets.only(right: 20.0),
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              image,
                            )))),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(username + ' ',
                            style: TextStyle(
                                color: Styles.primaryFontColor,
                                fontSize: Styles.h3,
                                fontWeight: Styles.lightFont)),
                        Text(
                          '(' + year + ')',
                          style: TextStyle(
                              fontSize: Styles.h3,
                              fontWeight: Styles.lightFont,
                              color: Styles.secondaryFontColor),
                        ),
                      ],
                    ),
                    Text(description,
                        style: TextStyle(
                            color: Styles.secondaryFontColor,
                            fontWeight: Styles.lightFont,
                            fontSize: Styles.h5))
                  ],
                ),
                children: [
                  ListTile(
                    title: Text(firstLine,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: Styles.h4,
                            fontWeight: Styles.lightFont)),
                    subtitle: Text(secondLine,
                        style: TextStyle(
                            color: Styles.secondaryFontColor,
                            fontSize: Styles.h5,
                            fontWeight: Styles.lightFont)),
                  ),
                ])
          ],
        ));
  }
}
