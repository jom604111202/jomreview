import 'package:flutter/material.dart';

class MyConstant {
  static String appNeme = 'Jom App';
  static String rountAuthen = '/authen';
  static String rountCreatAccount = '/createAccount';

  static Color primery = const Color(0xff3381bf);
  static Color dark = const Color(0xff001d39);
  static Color lignt = const Color(0xff6db0f2);

  BoxDecoration mainBoz() => BoxDecoration(color: primery.withOpacity(0.75));

  TextStyle h1Style() => TextStyle(
        color: dark,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      );

  TextStyle h2Style() => TextStyle(
        color: dark,
        fontSize: 18,
        fontWeight: FontWeight.w700,
      );

  TextStyle h3Style() => TextStyle(
        color: dark,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      );

  TextStyle h3StylePick() => const TextStyle(
        color: Colors.pink,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      );
}
