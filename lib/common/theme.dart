import 'package:flutter/material.dart';
import 'package:itnun/common/palette.dart';

final _inputBorder = UnderlineInputBorder(
  borderSide: BorderSide(
    color: Palette.text.shade400,
  ),
);

final theme = ThemeData(
  fontFamily: "SUIT",
  primarySwatch: Palette.primary,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Palette.primary.shade500,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: "SUIT"),
    ),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    centerTitle: true,
    elevation: 0,
    titleTextStyle: TextStyle(
      fontSize: 20,
      fontFamily: "SUIT",
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    iconTheme: IconThemeData(color: Colors.black),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      side: const BorderSide(
        color: Palette.primary,
        width: 2,
      ),
      textStyle: const TextStyle(
        fontSize: 18,
        fontFamily: "SUIT",
        fontWeight: FontWeight.bold,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    enabledBorder: _inputBorder,
    focusedBorder: _inputBorder,
    errorBorder: _inputBorder,
    focusedErrorBorder: _inputBorder,
    hintStyle: TextStyle(
      fontSize: 16,
      fontFamily: "SUIT",
      color: Palette.text.shade400,
    ),
    errorStyle: TextStyle(
      color: Palette.negative.shade400,
      fontSize: 12,
      fontFamily: "SUIT",
      fontWeight: FontWeight.w500,
    ),
  ),
);
