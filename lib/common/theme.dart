import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

final AppColors appColors = AppColors();
ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: appColors.backgroundColor,
  fontFamily: GoogleFonts.jost().fontFamily,
  textTheme: GoogleFonts.jostTextTheme(),
  // AppBar Theme
  appBarTheme: AppBarTheme(
    color: appColors.appBarColor, // AppBar background color
    elevation: 4,
    titleTextStyle: GoogleFonts.jost(
      color: appColors.appWhiteColor,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    iconTheme:
    IconThemeData(color: appColors.appWhiteColor), // AppBar icon color
  ),

  // TextField Theme
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: appColors.appGreyColor,
    prefixIconColor:
    appColors.appWhiteColor, // Background color of the text field
    labelStyle: GoogleFonts.jost(
      color: appColors.appWhiteColor, // Label color
    ),
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
    floatingLabelStyle: GoogleFonts.jost(
        backgroundColor: appColors.appGreyColor,
        color: appColors.appWhiteColor,
        fontWeight: FontWeight.bold,
        fontSize: 20),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: appColors.appBarColor,
    foregroundColor: appColors.appWhiteColor,
  ),
);