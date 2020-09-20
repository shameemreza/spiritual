import 'package:flutter/material.dart';
import 'package:spiritual/components/common/style/styles.dart';
import 'package:spiritual/settings/Settings.dart';

class PostCard extends StatelessWidget {
  final avatar;
  final image;
  final name;
  final author;
  final description;

  PostCard({this.avatar, this.image, this.name, this.author, this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      padding: EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            offset: Offset(0, 2),
            blurRadius: 4.0)
      ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: <Widget>[
                Container(
                    height: 40.0,
                    width: 40.0,
                    margin: Settings.rtl
                        ? EdgeInsets.only(left: 20.0)
                        : EdgeInsets.only(right: 20.0),
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              avatar == null
                                  ? 'assets/avatars/avatar_1.jpg'
                                  : avatar,
                            )))),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(name == null ? "Shameem Reza" : name,
                        style: TextStyle(
                            color: Styles.primaryFontColor,
                            fontWeight: Styles.lightFont,
                            fontSize: Styles.h3)),
                    Row(
                      children: <Widget>[
                        Text('Posted in ',
                            style: TextStyle(
                                color: Styles.secondaryFontColor,
                                fontSize: Styles.h5,
                                fontWeight: Styles.lightFont)),
                        Text(author == null ? 'Flutter UI' : author,
                            style: TextStyle(
                                color: Styles.primaryFontColor,
                                fontWeight: Styles.lightFont,
                                fontSize: Styles.h5))
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Styles.primaryFontColor,
                image: DecorationImage(
                    image: AssetImage(image == null
                        ? 'assets/images/spiritual_pic.jpg'
                        : image),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.white.withOpacity(0.2), BlendMode.dstATop))),
            height: 170.0,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
                description == null
                    ? 'Extreme coffee lover. Twitter maven. Internet practitioner. Beeraholic.'
                    : description,
                style: TextStyle(
                    color: Styles.secondaryFontColor,
                    fontSize: Styles.h4,
                    fontWeight: Styles.lightFont)),
          )
        ],
      ),
    );
  }
}
