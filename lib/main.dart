import 'package:flutter/material.dart';
import 'routes.dart';
import 'themes/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       theme: AppTheme.lightTheme, 
      darkTheme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splash,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
