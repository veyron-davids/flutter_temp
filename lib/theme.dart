import 'package:flutter/material.dart';

import './constants.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: veyronColorPrimary,
    accentColor: Colors.deepOrange,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Michroma",
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    // inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

// InputDecorationTheme inputDecorationTheme() {
//   OutlineInputBorder outlineInputBorder = OutlineInputBorder(
//     borderRadius: BorderRadius.circular(28),
//     borderSide: BorderSide(color: kTextColor),
//     gapPadding: 10,
//   );
//   return InputDecorationTheme(
//     // If  you are using latest version of flutter then lable text and hint text shown like this
//     // if you r using flutter less then 1.20.* then maybe this is not working properly
//     // if we are define our floatingLabelBehavior in our theme then it's not applayed
//     floatingLabelBehavior: FloatingLabelBehavior.always,
//     contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
//     enabledBorder: outlineInputBorder,
//     focusedBorder: outlineInputBorder,
//     border: outlineInputBorder,
//   );
// }

TextTheme textTheme() {
  return const TextTheme(
    headline1: TextStyle(
      fontFamily: 'Michroma',
      fontSize: 14,
      color: Colors.black,
    ),
    bodyText1: TextStyle(
      fontFamily: 'Michroma',
      fontSize: 14,
      color: Colors.black,
    ),
    bodyText2: TextStyle(
      fontFamily: 'Michroma',
      fontSize: 14,
      color: Colors.black,
    ),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    backgroundColor: veyronColorPrimary,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.white),
    textTheme: TextTheme(
      headline6: TextStyle(color: Colors.white, fontSize: 22),
    ),
  );
}
