import 'package:flutter/material.dart';
import 'package:spiritual/components/common/style/styles.dart';

class FollowCard extends StatelessWidget {
  final county;
  final name;
  final List<AssetImage> icons;

  FollowCard({this.name, this.county, this.icons});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.2),
            blurRadius: 4,
            offset: Offset(0, 4))
      ]),
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.25,
                vertical: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  county,
                  style: TextStyle(
                      color: Styles.secondaryFontColor,
                      fontSize: Styles.h4,
                      fontWeight: Styles.lightFont),
                ),
                Text(
                  name,
                  style: TextStyle(
                      color: Styles.primaryFontColor,
                      fontSize: Styles.h2,
                      fontWeight: Styles.lightFont),
                  textAlign: TextAlign.center,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: icons.map((image) {
                      return Container(
                          height: 35.0,
                          width: 35.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.cover, image: image)));
                    }).toList()),
                InkWell(
                  onTap: () {
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text("Clicked on 'FOLLOW'"),
                      duration: Duration(seconds: 1),
                    ));
                  },
                  child: Container(
                    width: 100.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        color: Styles.primaryFontColor,
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.2),
                              blurRadius: 4,
                              offset: Offset(0, 4))
                        ]),
                    child: Center(
                      child: Text(
                        'FOLLOW',
                        style: TextStyle(
                            color: Styles.helperTextColor,
                            fontSize: Styles.h3,
                            fontWeight: Styles.lightFont),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
              top: 5.0,
              right: 5.0,
              child: Image.asset('assets/images/drag_lines.png'))
        ],
      ),
    );
  }
}
