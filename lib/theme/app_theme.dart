import 'package:flutter/material.dart';
import 'package:travel_blog/theme/app_color.dart';

class TravelTheme {
  static final lightTheme = ThemeData(
    fontFamily: 'SansRegular',
    primarySwatch: TravelColor.travelColor,
    // Travel app bar theming
    appBarTheme: const AppBarTheme(
      elevation: 0.0,
      actionsIconTheme: IconThemeData(
        color: TravelColor.appColor,
        size: 25,
      ),
      backgroundColor: TravelColor.appColor,
      titleTextStyle: TextStyle(
        fontFamily: 'SansBold',
        fontSize: 20,
      ),
    ),
    // Textfield theme
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: TravelColor.travelColor.shade100,
      prefixIconColor: TravelColor.travelColor.shade900,
      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      focusColor: TravelColor.appColor,
      errorStyle: const TextStyle(fontSize: 16, fontFamily: 'SansItalic'),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: TravelColor.travelColor.shade400),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: Colors.red.shade200),
      ),
    ),
    // Textbutton theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: TravelColor.travelColor.shade900,
        padding: const EdgeInsets.all(10),
        textStyle: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontFamily: 'SansRegular',
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    // OutlinedButton theme
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: TravelColor.travelColor.shade50,
        primary: TravelColor.travelColor.shade900,
        padding: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
  );
}
