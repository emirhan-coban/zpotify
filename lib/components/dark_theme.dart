// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class CustomTheme {
static final ColorScheme darkColorScheme = ColorScheme(
 primary: Color.fromRGBO(33,33,33,1),
 secondary: Color.fromRGBO(18,18,18,1),
 surface: Color.fromRGBO(83,83,83,1),
 background: Color.fromRGBO(18,18,18,1),
 onPrimary: Color.fromRGBO(179,179,179,1),
 onSecondary: Colors.white,
 error: Colors.red,
 onSurface: Colors.white,
 onBackground: Colors.white,
 onError: Colors.white,
 brightness: Brightness.dark,
 );
static final ThemeData darkTheme = ThemeData.from(
  colorScheme: darkColorScheme,
 );
}