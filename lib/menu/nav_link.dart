import 'package:flutter/material.dart';
import 'package:spiritual/components/common/style/styles.dart';

class NavLink extends StatelessWidget {
  final route;
  final text;
  final icon;

  NavLink({
    this.route,
    this.text,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            offset: Offset(0, 2),
            blurRadius: 4.0)
      ]),
      child: ListTile(
        leading: Icon(
          icon,
          color: Color.fromRGBO(0, 0, 0, 0.15),
        ),
        title: Text(
          text,
          style: TextStyle(color: Styles.primaryFontColor, fontSize: Styles.h5),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => route),
          );
        },
      ),
    );
  }
}
