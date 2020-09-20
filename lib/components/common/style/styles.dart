import 'package:flutter/material.dart';

class Styles {
  /// ****** rtl ****** ///
  static final rtl = false;

  /// ****** AppBar ****** ///
  static final appBarHeight = 55.0;

  /// ****** Colors ****** ///
  static final backGroundColor = Color(0xffFAFBFB);

  static final gradient = LinearGradient(
      colors: [const Color(0xfff2709c), const Color(0xffff9472)],
      begin: const FractionalOffset(0.0, 1.0),
      end: const FractionalOffset(0.0, 0.0),
      stops: [0.0, 1.0],
      tileMode: TileMode.clamp);

  /// ****** Fonts ****** ///

  /// font sizes ///
  static final h1 = 32.0;
  static final h2 = 26.0;
  static final h3 = 16.0;
  static final h4 = 14.0;
  static final h5 = 12.0;
  static final h6 = 10.0;

  /// font colors ///
  static final primaryFontColor = Color(0xff000c0e);
  static final secondaryFontColor = Color(0xff878787);
  static final helperTextColor = Colors.white;
  static final hintTextColor = Color.fromRGBO(255, 255, 255, 0.6);

  /// font weights ///
  static final lightFont = FontWeight.w300;
  static final mediumFont = FontWeight.w600;
}
