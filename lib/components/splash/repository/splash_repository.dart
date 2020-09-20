import 'package:flutter/material.dart';
import 'package:spiritual/components/splash/widget/splash_widget.dart';

class SplashRepository {
  Widget loadWidget() {
    return SplashWidget(title: "appbuff", image: "assets/images/logo.png");
  }
}
