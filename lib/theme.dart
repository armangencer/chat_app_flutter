import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: aPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme,
    colorScheme: const ColorScheme.light(
      primary: aPrimaryColor,
      secondary: aSecondaryColor,
      error: aErrorColor,
    ),
    iconTheme: const IconThemeData(color: aContentColorLightTheme),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: aContentColorLightTheme),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: aContentColorLightTheme.withOpacity(0.7),
      unselectedItemColor: aContentColorLightTheme.withOpacity(0.32),
      selectedIconTheme: const IconThemeData(color: aPrimaryColor),
      showUnselectedLabels: true,
    ),
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: aPrimaryColor,
    scaffoldBackgroundColor: aContentColorLightTheme,
    appBarTheme: appBarTheme,
    iconTheme: const IconThemeData(color: aContentColorDarkTheme),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: aContentColorLightTheme,
      selectedItemColor: Colors.white70,
      unselectedItemColor: aContentColorDarkTheme.withOpacity(0.32),
      selectedIconTheme: const IconThemeData(color: aPrimaryColor),
      showUnselectedLabels: true,
    ),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: aContentColorDarkTheme),
    colorScheme: const ColorScheme.dark().copyWith(
      primary: aPrimaryColor,
      secondary: aSecondaryColor,
      error: aErrorColor,
    ),

  
  );
}



const appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);
