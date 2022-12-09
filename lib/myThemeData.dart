import 'package:flutter/material.dart';
class MyTheme {
  static Color blackColor = Color(0xFF242424);
  static Color whiteColor = Colors.white;
  static Color goldPrimary = Color(0xFFB7935F);
  static ThemeData lightTheme = ThemeData(
    primaryColor: goldPrimary,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(
        color: blackColor
      )
    ),
      textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: blackColor,
      ),
        subtitle1:TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: blackColor,
        ),
  ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: blackColor,
      unselectedItemColor: whiteColor,

    )
  );
  static ThemeData darkTheme = ThemeData();

}