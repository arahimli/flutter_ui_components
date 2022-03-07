
import 'dart:io';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_components/components/button/big_bordered_button.dart';
import 'package:flutter_ui_components/config/endpoints.dart';
import 'package:flutter_ui_components/config/styles.dart';
import 'package:meta/meta.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Utils {
  Utils._();
  @literal
  static String getString(BuildContext context, String key) {
    if (key != '') {
      return tr(key);
    } else {
      return '';
    }
  }
  static String getStringWithoutContext(String? key) {
    if (key != '') {
      return tr(key!);
    } else {
      return '';
    }
  }

  static double parseDouble(String value) {
    try{
      return double.parse(value);
    }catch(_){
      return 0.0;
    }
  }

  static void focusClose(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
    SystemChannels.textInput.invokeMethod('TextInput.hide');
  }

  static Color hexToColor(String hexColor) {
    try{
      hexColor = hexColor.replaceAll("#", "");
      if (hexColor.length == 6) {
        hexColor = "FF" + hexColor;
      }
      if (hexColor.length == 8) {
        return Color(int.parse("0x$hexColor"));
      }else{
        return Color(0xFFFFFFFF);
      }
    }catch(_){
      return Color(0xFFFFFFFF);
    }
  }


  static Color selectInputColor(Map<String, dynamic> dataMap, String key) {
    try{
      return dataMap[key] ?? Color(0xFFE5EAF5);
      // return dataMap[key] ?? MainColors.generalBackgorundColor;
    }catch(_){
      return Color(0xFFE5EAF5);
    }
  }


  static DateTime stringToDate({String? value, String format = "yyyy-MM-dd", DateTime? defaultDate}) {
    try{
      return DateFormat(format).parse(value!);
    }catch(_){
      return defaultDate ?? DateTime.now();
    }
  }


  static String stringToDatetoString({required String value, String formatFrom = "dd.MM.yyyy", String formatTo = "yyyy-MM-dd", DateTime? defaultDate}) {
    String returnVal = '';
    DateTime returnDate;
    final formatter2 = DateFormat(formatTo);
    try{
      returnDate =  DateFormat(formatFrom).parse(value);
    }catch(_){
      returnDate =  defaultDate ?? DateTime.now();
    }
    returnVal = formatter2.format(returnDate);

    return returnVal;
  }


  static String dateToString(DateTime defaultDate, {String format = "yyyy-MM-dd", String langCode = 'az'}) {
    String returnVal = '';
    final formatter = DateFormat(format, langCode);
    returnVal = formatter.format(defaultDate);

    return returnVal;
  }

  static TimeOfDay stringToTime({String? value}) {
    try{
      return TimeOfDay(hour: int.parse(value!.split(":")[0]), minute: int.parse(value.split(":")[1]));
    }catch(_){
      return TimeOfDay(hour: 00, minute: 00);
    }
  }


  static bool isLightMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light;
  }

  // static String getDateFormat(String dateTime) {
  //   final DateTime date = DateTime.parse(dateTime);
  //   return DateFormat(MainConfig.dateFormat).format(date);
  // }

  static Brightness getBrightnessForAppBar(BuildContext context) {
    if (Platform.isAndroid) {
      return Brightness.dark;
    } else {
      return Theme.of(context).brightness;
    }
  }
  static String generateLanguageHeader(String lang){
    String return_val  = lang;
    if(lang.length == 2){
      if(lang == 'en')
        return_val = "${return_val}-${"gb"}";
      else
        return_val = "${return_val}-${lang}";
    }
    return return_val;
  }


  static void launchPhone(String tel) {
    try{
      launch("tel:${tel}");
    }catch(_){

    }
  }



  static void launchUrl(String value) {
    try{
      launch(value.contains('http') ? value : "${SITE_URL}${value}");
    }catch(_){
    }
  }

  static double roundNumber(double value, {int toPoint = 2}) {
    try{
      return double.parse((value).toStringAsFixed(toPoint));
    }catch(_){
      return 0.0;
    }
  }




  static DateTime? previous;
  static void psPrint(String msg) {
    final DateTime now = DateTime.now();
    int min = 0;
    if (previous == null) {
      previous = now;
    } else {
      min = now.difference(previous!).inMilliseconds;
      previous = now;
    }

    print('$now ($min)- $msg');
  }


  static Future<bool> checkInternetConnectivity() async {
    final ConnectivityResult connectivityResult =
    await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.mobile) {
      // print('Mobile');
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      // print('Wifi');
      return true;
    } else if (connectivityResult == ConnectivityResult.none) {
      print('No Connection');
      return false;
    } else {
      return false;
    }
  }





  static dynamic showSuccessModal(BuildContext context, Size size, {String? title, String? buttonText, Function? onTap}) {

    return showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        builder: (ctx) {
          return Container(
            // height: size.height / (812 / 664),
            padding: EdgeInsets.symmetric(
                vertical:
                12,
                horizontal:
                24),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                    child: Container(
                        width: 64,
                        height: 4,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                  ),
                  SizedBox(height: size.height * 0.4 / 10,),
                  Image.asset("assets/gifs/Drooling-cat.gif", height: size.height * 2 / 10, fit: BoxFit.cover),
                  SizedBox(height: size.height * 0.4 / 10,),
                  AutoSizeText(title ?? '-', style: MainStyles.appbarStyle,),
                  BigBorderedButton(
                    text: buttonText ?? ' -',
                    onTap: (){
                      onTap!(ctx);
                    },
                    horizontal: 0,
                    vertical: size.height * 0.4 / 10,
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                BorderRadius.only(
                    topLeft: Radius
                        .circular(30),
                    topRight:
                    Radius.circular(
                        30))),
          );
        },
        isScrollControlled: true);
  }





}