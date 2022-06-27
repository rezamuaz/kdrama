import 'package:flutter/material.dart';

import 'custom_color.dart';

class CustomTheme {
  static ThemeData get darkTheme {
    return ThemeData(
        primaryColor: CustomColors.pink200,
        primaryColorDark: CustomColors.pink100,
        colorScheme: ColorScheme(
            background: CustomColors.background,
            onBackground: Colors.white,
            brightness: Brightness.dark,
            primary: Colors.pink.shade300,
            onPrimary: Colors.white,
            primaryContainer: Colors.pink.shade400,
            secondary: Colors.purple.shade400,
            onSecondary: Colors.white,
            error: Colors.redAccent.shade400,
            onError: Colors.white,
            surface: CustomColors.layer1,
            onSurface: Colors.white),
        scaffoldBackgroundColor: CustomColors.background,
        primarySwatch: Colors.blue,
        fontFamily: 'Inter',
        textTheme: ThemeData.dark().textTheme,
        appBarTheme: const AppBarTheme(
          backgroundColor: CustomColors.deepblue,
          toolbarTextStyle: TextStyle(color: Colors.white70),
        ),
        buttonTheme: ButtonThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: CustomColors.pink100,
        ));
  }

  static ThemeData get lightTheme {
    //1
    return ThemeData(
        //2
        primaryColor: CustomColors.pink300,
        scaffoldBackgroundColor: CustomColors.grey800,
        fontFamily: 'Montserrat', //3
        buttonTheme: ButtonThemeData(
          // 4
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: CustomColors.pink100,
        ));
  }
}
