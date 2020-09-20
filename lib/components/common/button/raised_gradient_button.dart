import 'package:flutter/material.dart';

class RaisedGradientButton extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  final Function onPressed;
  final color;

  const RaisedGradientButton({
    Key key,
    @required this.child,
    this.gradient ,
    this.width = 50.0,
    this.height = 50.0,
    this.onPressed,
    this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50.0,
      decoration: BoxDecoration(
        gradient: gradient != null ? gradient : null,
        color: color != null ? color : null,
        boxShadow: [
          BoxShadow(
            color: Colors.grey[500],
            offset: Offset(0.0, 1.5),
            blurRadius: 1.5,
          ),
        ],
        borderRadius: BorderRadius.circular(100.0)
      ),
      child: Material(
        color: Colors.transparent,
        child: GestureDetector(
          onTap: onPressed,
          child: Center(
            child: child,
          )
        ),
      ),
    );
  }
}