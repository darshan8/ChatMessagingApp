import 'package:chat_message_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    inputDecorationTheme: inputDecorationTheme(),
    appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: kContentColorLightTheme),
    // textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
    //     .apply(bodyColor: kContentColorLightTheme),
    colorScheme: ColorScheme.light(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      error: kErrorColor,
    ),
  );
}

InputDecorationTheme inputDecorationTheme() {
  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding:
    EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      gapPadding: 10,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      gapPadding: 10,
    ),
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kContentColorLightTheme,
    appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: kContentColorDarkTheme),
    // textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
    //     .apply(bodyColor: kContentColorDarkTheme),
    colorScheme: ColorScheme.dark().copyWith(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      error: kErrorColor,
    ),
  );
}

final appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);
