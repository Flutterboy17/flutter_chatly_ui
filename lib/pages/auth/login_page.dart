// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../../constants/colors_page.dart';
import '../../routes.dart';
import '../../widgets/textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.transparentColor,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColors.accentColor),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    "Login",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 24.0),
              UniversalTextField(
                hintText: 'Enter your email',
                labelText: 'Email',
                controller: emailController,
                prefixIcon: Icons.email,
              ),
              SizedBox(height: 12),
              UniversalTextField(
                hintText: 'Enter your password',
                labelText: 'Password',
                controller: passwordController,
                obscureText: true,
                prefixIcon: Icons.lock,
              ),
              SizedBox(height: 24.0),
              MaterialButton(
                minWidth: double.infinity,
                height: 50,
                highlightColor: AppColors.transparentColor,
                highlightElevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                onPressed: () {
                  // Implement login logic here
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil(Routes.home, (route) => false);
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: AppColors.bgColor),
                ),
                color: AppColors.accentColor,
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account?'),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(Routes.register);
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: AppColors.accentColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
