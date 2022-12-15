import 'package:flutter/material.dart';
class MyTheme {
  static Color blackColor = Color(0xFF242424);
  static Color whiteColor = Colors.white;
  static Color goldPrimary = Color(0xFFB7935F);
  static Color darkPrimary = Color(0xFF141A2E);
  static Color yellowColor = Color(0xFFFACC1D);

  static ThemeData lightTheme = ThemeData(
    primaryColor: goldPrimary,
    scaffoldBackgroundColor: Colors.transparent,
    primaryTextTheme: TextTheme(
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
      subtitle2:TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: whiteColor,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(
        color: blackColor
      )
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: blackColor,
      unselectedItemColor: whiteColor,

    )
  );
  static ThemeData darkTheme = ThemeData(
    primaryColor: darkPrimary,

    scaffoldBackgroundColor: Colors.transparent,
      primaryTextTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: whiteColor,
        ),
        subtitle1:TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: yellowColor,
        ),
        subtitle2:TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: whiteColor,
        ),

      ),
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
            color: whiteColor
        )
    ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: yellowColor,
        unselectedItemColor: whiteColor,

      )
  );

}