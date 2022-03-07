import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter_ui_components/config/endpoints.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Language {
  final String languageCode;
  final String countryCode;
  final String name;

  Language({required this.languageCode, required this.countryCode, required this.name});

  Locale toLocale() {
    Platform.localeName;
    return Locale(languageCode, countryCode);
  }
  Future<Locale> startLocale() async{

    SharedPreferences pref = await SharedPreferences.getInstance();
    if (!pref.containsKey('language')) {
      if(Platform.localeName.contains('ru')){
        await pref.setString('language', 'ru');
        LANGUAGE = 'ru';
        return Locale('ru', 'RU');
      }else{
        await pref.setString('language', 'az');
        LANGUAGE = 'az';
        return Locale('az', "AZ");
      }
    }else {
      return Locale(pref.getString('language')!, pref.getString('language').toString().toUpperCase());
    }
  }
}