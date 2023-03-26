import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_web_porto/resources/r.dart';

class AppTheme {
  ThemeData getTheme({required bool isDark}) {
    return ThemeData(
      useMaterial3: true,
      textTheme: GoogleFonts.poppinsTextTheme(),
      colorScheme: ColorScheme.fromSwatch(
        accentColor: Colors.transparent,
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.transparent,
      ),
      bottomAppBarTheme: BottomAppBarTheme(
        surfaceTintColor: Resource.appColors.bgColor3.withOpacity(0.55),
        color: Resource.appColors.bgColor3.withOpacity(0.55),
      ),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      scaffoldBackgroundColor:
          isDark ? Resource.appColors.bgColor3 : Colors.white,
    );
  }
}
