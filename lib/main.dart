import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:spiritual/routers/routes.dart';
import 'package:spiritual/settings/Settings.dart';

import 'localisation/AppLocalisations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      localizationsDelegates: [
        AppLocalisations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("ar", "AE"),
        Locale("en", "US"),
      ],
      locale: !Settings.rtl ? Locale("en", "US") : Locale("ar", "AE"),
      theme: ThemeData(
          unselectedWidgetColor: Color(0xffD0D0D0),
          dividerColor: Colors.transparent,
          fontFamily: 'TitilliumWeb'),
      home: Routes.splashScreenPage,
    );
  }
}
