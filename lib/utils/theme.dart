import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData buildTheme() {
  var baseTheme = ThemeData(
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(10.0),
      ),
      fillColor: Colors.white70,
      filled: true,
    ),
    textTheme: TextTheme(
      bodyText1: const TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 14,
        color: Colors.black,
      ),
      bodyText2: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 14,
        color: Colors.blueGrey.shade900,
      ),
      headline6: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
        color: Colors.black,
      ),
      headline3: const TextStyle(
        fontSize: 28,
        color: Colors.black,
      ),
      subtitle1: const TextStyle(
        fontSize: 16,
        color: Colors.black,
      ),
    ),
  );
  return baseTheme.copyWith(
    textTheme: GoogleFonts.nunitoTextTheme(baseTheme.textTheme),
  );
}
