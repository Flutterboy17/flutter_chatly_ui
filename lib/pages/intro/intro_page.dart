import 'package:chat_app_complete_ui/constants/colors_page.dart';
import 'package:flutter/material.dart';

import '../../routes.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  List<Widget> _introPages = [
    IntroItem(
      title: "Welcome to Chatly",
      description: "Connect and chat with friends easily.",
      image: "assets/images/intro-1.png",
    ),
    IntroItem(
      title: "Secure and Private",
      description: "Your conversations are safe and private.",
      image: "assets/images/intro-2.png",
    ),
    IntroItem(
      title: "Get Started",
      description: "Join the chat community now!",
      image: "assets/images/intro-3.png",
    ),
  ];

  @override
  void initState() {
    super.initState();
    _currentPage = 0;
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _goToNextPage() {
    if (_currentPage < _introPages.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    }
  }

  void _goToRegisterPage() {
    // Navigate to the registration page here
    Navigator.pushNamed(context, Routes.register);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              physics: BouncingScrollPhysics(),
              controller: _pageController,
              itemCount: _introPages.length,
              itemBuilder: (context, index) {
                return _introPages[index];
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: List.generate(_introPages.length, (index) {
                  return AnimatedContainer(
                    width: _currentPage == index ? 18 : 12,
                    height: 5,
                    duration: Duration(
                        milliseconds: 300), // Adjust the duration as needed
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: _currentPage == index
                          ? AppColors.accentColor
                          : AppColors.bgColor,
                    ),
                  );
                }),
              ),
              MaterialButton(
                minWidth: 120,
                height: 50,
                highlightColor: AppColors.transparentColor,
                highlightElevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
                color: AppColors.accentColor,
                onPressed: () {
                  if (_currentPage == _introPages.length - 1) {
                    _goToRegisterPage();
                  } else {
                    _goToNextPage();
                  }
                },
                child: Text(
                  _currentPage == _introPages.length - 1
                      ? "Get Started"
                      : "Next",
                  style: TextStyle(
                    color: AppColors.bgColor,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 24.0),
        ],
      ),
    );
  }
}

class IntroItem extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  IntroItem({
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(
          flex: 2,
        ),
        Image.asset(image, height: 250, width: 250),
        Spacer(),
        Text(
          title,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16.0),
        Text(
          description,
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        Spacer(),
      ],
    );
  }
}
