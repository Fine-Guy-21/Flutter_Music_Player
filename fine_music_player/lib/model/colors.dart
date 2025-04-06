import 'package:flutter/material.dart';

class AppColors {
  final bool isDarkMode;
  AppColors(this.isDarkMode);

  Color get primaryColor => isDarkMode ? Colors.amber : Colors.purpleAccent;
  Color get primaryTextColor => isDarkMode ? Colors.white : Colors.black;
  Color get backgroundColor => isDarkMode ? Colors.black : Colors.white;
  Color get unchangableColor =>
      isDarkMode ? Colors.grey.shade400 : Colors.grey.shade800;
}
