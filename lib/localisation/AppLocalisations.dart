import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert' show json;

class AppLocalisations {
  final Locale locale;

  Map<String, String> _localizedString;

  AppLocalisations(this.locale);

  static AppLocalisations of(BuildContext context) {
    return Localizations.of<AppLocalisations>(context, AppLocalisations);
  }

  static const LocalizationsDelegate<AppLocalisations> delegate =
      _AppLocalizationsDelegate();

  static  bool isLocalEqual(Locale localeOne, Locale localeTwo) {
    if (localeOne == null) {
      return false;
    }
    if (localeTwo == null) {
      return false;
    }
    return localeOne.languageCode == localeTwo.languageCode;
  }

  static  Locale getSupportedLanguages(Locale locale, List<Locale> supportedLocales) {
    for (var supportedLocale in supportedLocales) {
      if (locale != null) {
      }
      if (AppLocalisations.isLocalEqual(supportedLocale, locale))
        return supportedLocale;
    }
    return supportedLocales.first;
  }

  Future<bool> load() async {
    String languageCode = "en";
    if (this.locale != null) {
        languageCode = this.locale.languageCode;
    }
    String jsonString = await rootBundle.loadString('lang/$languageCode.json');
    Map <String, dynamic> jsonMap = json.decode(jsonString);
    _localizedString = jsonMap.map((key, value) {
      return MapEntry(key, value.toString());
    });
    return true;
  }

  String translate(String key) {
    String result = _localizedString[key];
    if (result == null) {
      return "";
    }
    return result.isEmpty ? "" : result;
  }
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalisations> {
   const _AppLocalizationsDelegate();

   @override
  bool isSupported(Locale locale) {
     if (locale == null) {
       return true;
     }
    return ['en', 'ar'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalisations> load(Locale locale) async {
    AppLocalisations localisations = new AppLocalisations(locale);
    await localisations.load();
    return localisations;
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalisations> old) => false;
}