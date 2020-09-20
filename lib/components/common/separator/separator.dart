import 'package:flutter/material.dart';

class Separator extends StatelessWidget {

  final height;
  final width;

  Separator({this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(height: height, width: width,);
  }
}