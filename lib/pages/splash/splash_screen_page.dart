import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spiritual/components/splash/repository/splash_repository.dart';
import 'package:spiritual/routers/routes.dart';
import 'package:spiritual/settings/Settings.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    openHomePage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SplashRepository().loadWidget());
  }

  void openHomePage() {
    Timer(
        Duration(seconds: Settings.splashScreenDuration),
        () => {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => Routes.homePage))
            });
  }
}
