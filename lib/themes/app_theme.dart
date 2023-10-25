import 'package:chat_app_complete_ui/constants/colors_page.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      primaryColor: AppColors.accentColor,
      hintColor: AppColors.dimColor,
      
      primarySwatch: Colors.pink,
      scaffoldBackgroundColor: AppColors.bgColor);

  static ThemeData darkTheme = ThemeData(
      primaryColor: AppColors.accentColor,
      hintColor: AppColors.dimColor,
      primarySwatch: Colors.pink,
      scaffoldBackgroundColor: AppColors.bgColor);
}
