import 'package:flutter/material.dart';
import 'pages/auth/forget_page.dart';
import 'pages/auth/login_page.dart';
import 'pages/auth/profile_page.dart';
import 'pages/auth/register_page.dart';
import 'pages/home_page.dart';
import 'pages/intro/intro_page.dart';
import 'pages/intro/splash_page.dart';

class Routes {
  static const String splash = '/';
  static const String intro = '/intro';
  static const String register = '/register';
  static const String profile = '/profile';
  static const String login = '/login';
  static const String forgot = '/forgot';
  static const String home = '/home';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => SplashPage());
      case intro:
        return MaterialPageRoute(builder: (_) => IntroPage());
      case register:
        return MaterialPageRoute(builder: (_) => RegisterPage());
      case profile:
        return MaterialPageRoute(builder: (_) => ProfilePage());
      case login:
        return MaterialPageRoute(builder: (_) => LoginPage());
      case forgot:
        return MaterialPageRoute(builder: (_) => ForgotPage());
      case home:
        return MaterialPageRoute(builder: (_) => HomePage());
      default:
        return MaterialPageRoute(builder: (_) => ErrorPage());
    }
  }
}

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.error,
              size: 100,
              color: Colors.red,
            ),
            Text(
              'Oops! Something went wrong.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
