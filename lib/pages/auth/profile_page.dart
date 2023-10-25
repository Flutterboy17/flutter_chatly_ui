// ignore_for_file: must_be_immutable

import 'package:chat_app_complete_ui/constants/colors_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../routes.dart';
import '../../widgets/textfield.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key});

  TextEditingController nameController = TextEditingController();

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
                  Text("Complete Profile",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 24.0),
              CupertinoButton(
                onPressed: () {},
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: AppColors.accentColor,
                  child: Icon(
                    CupertinoIcons.photo_camera,
                    color: AppColors.bgColor,
                    size: 34,
                  ),
                ),
              ),
              SizedBox(height: 24.0),
              UniversalTextField(
                hintText: 'Enter your name',
                labelText: 'Full Name',
                controller: nameController,
                prefixIcon: Icons.email,
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
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil(Routes.home, (route) => false);
                },
                child: Text(
                  'Submit Profile',
                  style: TextStyle(color: AppColors.bgColor),
                ),
                color: AppColors.accentColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
