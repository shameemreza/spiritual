import 'package:flutter/material.dart';
import 'package:spiritual/components/common/style/styles.dart';
import 'package:spiritual/components/dialogs/repository/InfoRepository.dart';
import 'package:spiritual/components/dialogs/repository/SubscribeRepository.dart';
import 'package:spiritual/components/dialogs/repository/WarningRepository.dart';
import 'package:spiritual/menu/component/component_list.dart';

class DialogList extends StatefulWidget {
  DialogList({Key key}) : super(key: key);

  @override
  DialogListState createState() {
    return DialogListState();
  }
}

class DialogListState extends State<DialogList> {
  Future<void> _info() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return InfoRepository().loadDialog(context);
      },
    );
  }

  Future<void> _subscribe() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return SubscribeRepository().loadDialog(context);
      },
    );
  }

  Future<void> _warning() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return WarningRepository().loadDialog(context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ComponentList(title: 'DIALOGS', componentCards: [
      GestureDetector(
        child: Container(
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.only(top: 30.0),
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
                Icons.info,
                size: 100.0,
                color: Colors.white,
              ),
              Container(
                  height: 40.0,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      "INFO",
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
          _info();
        },
      ),
      GestureDetector(
        child: Container(
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.only(top: 30.0),
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
                Icons.subscriptions,
                size: 100.0,
                color: Colors.white,
              ),
              Container(
                  height: 40.0,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      "SUBSCRIBE",
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
          _subscribe();
        },
      ),
      GestureDetector(
        child: Container(
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.only(top: 30.0),
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
                Icons.warning,
                size: 100.0,
                color: Colors.white,
              ),
              Container(
                  height: 40.0,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      "WARNING",
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
          _warning();
        },
      )
    ]);
  }
}
