import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{
  static ThemeData lighttheme(BuildContext context) => ThemeData(
  primarySwatch: Colors.deepPurple,
  fontFamily: GoogleFonts.lato().fontFamily,
  primaryTextTheme: GoogleFonts.latoTextTheme(),
  appBarTheme: AppBarTheme(
  color: Colors.white,
  iconTheme: IconThemeData(color: Colors.black),
  textTheme: Theme.of(context).textTheme,
  elevation: 0.0,
  )
  );

  static ThemeData darktheme(BuildContext context) => ThemeData(
    brightness: Brightness.dark,
  );

}