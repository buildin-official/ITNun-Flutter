import 'package:flutter/material.dart';
import 'package:itnun/common/palette.dart';

const _inputBorder = UnderlineInputBorder(
  borderSide: BorderSide(
    color: Color(0xFFCCCCCC),
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
      textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
    centerTitle: true,
    elevation: 0,
    titleTextStyle: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    iconTheme: IconThemeData(color: Colors.black),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      side: BorderSide(
        color: Palette.primary.shade500,
        width: 2,
      ),
      textStyle: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    enabledBorder: _inputBorder,
    focusedBorder: _inputBorder,
    errorBorder: _inputBorder,
    focusedErrorBorder: _inputBorder,
    hintStyle: TextStyle(
      fontSize: 16,
      color: Color(0xFFCCCCCC),
    ),
    errorStyle: TextStyle(
      color: Color(0xFFF33333),
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
  ),
);
