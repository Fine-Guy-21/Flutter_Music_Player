import 'package:flutter/material.dart';

class AppColors {
  final bool isDarkMode;
  AppColors(this.isDarkMode);

  Color get primaryColor => isDarkMode ? Colors.amber : Colors.purpleAccent;
  Color get primaryTextColor =>
      isDarkMode ? const Color.fromARGB(200, 255, 255, 255) : Colors.black;
  Color get backgroundColor =>
      isDarkMode ? Colors.black : const Color.fromARGB(255, 255, 255, 255);
  Color get unchangableColor =>
      isDarkMode ? Colors.grey.shade400 : Colors.grey.shade800;
}
