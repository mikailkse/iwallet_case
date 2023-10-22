import 'package:flutter/material.dart';
import 'package:iwallet_case/core/utils/constants/ui_color_constants.dart';

final class IWalletTheme {
  final ThemeData iWalletTheme = ThemeData(
    scaffoldBackgroundColor: UIColor.athensGray,
    appBarTheme: const AppBarTheme(
      backgroundColor: UIColor.athensGray,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal,
      ),
      elevation: 0,
    ),
    searchBarTheme: SearchBarThemeData(
      elevation: MaterialStateProperty.all(0),
      hintStyle: MaterialStateProperty.all(
        const TextStyle(
          color: UIColor.darkGrey,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        color: Color(0x8a000000),
        fontSize: 32,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal,
      ),
      displayMedium: TextStyle(
        color: Color(0x8a000000),
        fontSize: 25,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal,
      ),
      displaySmall: TextStyle(
        color: Color(0x8a000000),
        fontSize: 20,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal,
      ),
      headlineMedium: TextStyle(
        color: Color(0x8a000000),
        fontSize: 18,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal,
      ),
      headlineSmall: TextStyle(
        color: Color(0xdd000000),
        fontSize: 16,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal,
      ),
      titleLarge: TextStyle(
        color: Color(0xdd000000),
        fontSize: 14,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal,
      ),
      bodyLarge: TextStyle(
        color: Color(0xdd000000),
        fontSize: 18,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      bodyMedium: TextStyle(
        color: Color(0xdd000000),
        fontSize: 16,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      labelLarge: TextStyle(
        color: Color(0xdd000000),
        fontSize: 18,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
      ),
    ),
  );
}
