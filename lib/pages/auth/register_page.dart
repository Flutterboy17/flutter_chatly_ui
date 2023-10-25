// ignore_for_file: must_be_immutable

import 'package:chat_app_complete_ui/constants/colors_page.dart';
import 'package:flutter/material.dart';
import '../../routes.dart';
import '../../widgets/textfield.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cPasswordController = TextEditingController();

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
                  Text("Create Account",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
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
              SizedBox(height: 12),
              UniversalTextField(
                hintText: 'Confirm your password',
                labelText: 'Confirm Password',
                controller: cPasswordController,
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
                    borderRadius: BorderRadius.circular(6)),
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.profile);
                },
                child: Text(
                  'Create Account',
                  style: TextStyle(color: AppColors.bgColor),
                ),
                color: AppColors.accentColor,
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(color: AppColors.dimColor),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(Routes.login);
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: AppColors.accentColor,
                          fontWeight: FontWeight.bold),
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
