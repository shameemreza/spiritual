import 'package:flutter/material.dart';
import 'package:spiritual/components/common/style/styles.dart';

class ProfileCard extends StatelessWidget {
  final description;
  final name;
  final icon;
  final firstColumnNum;
  final secondColumnNum;
  final thirdColumnNum;
  final firstColumnCat;
  final secondColumnCat;
  final thirdColumnCat;
  final drag;

  ProfileCard(
      {this.name,
      this.description,
      this.icon,
      this.firstColumnCat,
      this.firstColumnNum,
      this.secondColumnCat,
      this.secondColumnNum,
      this.thirdColumnCat,
      this.thirdColumnNum,
      this.drag = true});

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
            width: double.infinity,
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05,
                vertical: 20.0),
            child:

                // Actual content of the card

                Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Color.fromRGBO(0, 0, 0, 0.2)))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                            height: 80.0,
                            width: 80.0,
                            decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(icon)))),
                        Text(name,
                            style: TextStyle(
                                color: Styles.primaryFontColor,
                                fontSize: Styles.h3,
                                fontWeight: Styles.lightFont)),
                        Text(
                          description,
                          style: TextStyle(
                              color: Styles.secondaryFontColor,
                              fontSize: Styles.h4,
                              fontWeight: Styles.lightFont),
                          textAlign: TextAlign.center,
                          softWrap: true,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                firstColumnNum,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: Styles.lightFont,
                                    fontSize: Styles.h5),
                              ),
                              Text(
                                firstColumnCat,
                                style: TextStyle(
                                    color: Styles.secondaryFontColor,
                                    fontWeight: Styles.lightFont,
                                    fontSize: Styles.h5),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  left: BorderSide(
                                      color: Color.fromRGBO(0, 0, 0, 0.2)),
                                  right: BorderSide(
                                      color: Color.fromRGBO(0, 0, 0, 0.2)))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                secondColumnNum,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: Styles.lightFont,
                                    fontSize: Styles.h5),
                              ),
                              Text(
                                secondColumnCat,
                                style: TextStyle(
                                    color: Styles.secondaryFontColor,
                                    fontWeight: Styles.lightFont,
                                    fontSize: Styles.h5),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                thirdColumnNum,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: Styles.lightFont,
                                    fontSize: Styles.h5),
                              ),
                              Text(
                                thirdColumnCat,
                                style: TextStyle(
                                    color: Styles.secondaryFontColor,
                                    fontWeight: Styles.lightFont,
                                    fontSize: Styles.h5),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
              top: 5.0,
              right: 5.0,
              child: Image.asset(
                'assets/images/drag_lines.png',
                color: drag == false ? Colors.white : Color(0xffE1E1E1),
              ))
        ],
      ),
    );
  }
}
