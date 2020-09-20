import 'package:flutter/material.dart';
import 'package:spiritual/components/common/style/styles.dart';

class UserCard extends StatelessWidget {
  final image;
  final username;
  final description;
  final icon;
  final rtl;

  UserCard({this.image, this.username, this.description, this.icon, this.rtl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4.0),
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            blurRadius: 4.0,
            offset: Offset(0, 2))
      ]),
      width: MediaQuery.of(context).size.width,
      height: 100.0,
      child: Row(
        children: <Widget>[
          Container(
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
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(username,
                    style: TextStyle(
                        color: Styles.primaryFontColor,
                        fontWeight: Styles.lightFont,
                        fontSize: Styles.h3)),
                Text(description,
                    style: TextStyle(
                        color: Styles.secondaryFontColor,
                        fontWeight: Styles.lightFont,
                        fontSize: Styles.h5))
              ],
            ),
          ),
          Container(
              height: 60.0,
              child: icon == null
                  ? null
                  : Image.asset('assets/images/drag_dots.png')),
        ],
      ),
    );
  }
}
