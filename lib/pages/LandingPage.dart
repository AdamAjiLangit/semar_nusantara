import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metal_marketplace/pages/HomePage.dart';
import 'package:metal_marketplace/pages/Register.dart';
import 'dart:async';

import 'package:page_transition/page_transition.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int currentPage = 0;
  PageController pageController = PageController();
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startAutoPageChange();
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }
  void _startAutoPageChange() {
    const autoPageChangeDuration = Duration(seconds: 3);

    _timer = Timer.periodic(autoPageChangeDuration, (timer) {
      // Automatically change to the next page
      if (currentPage < 2) {
        currentPage++;
      } else {
        currentPage = 0;
      }

      pageController.animateToPage(
        currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4A7971),
      body: GestureDetector(
        onHorizontalDragEnd: (details) {
          if (details.primaryVelocity! > 0) {
            // Swipe to the previous page
            pageController.previousPage(
              duration: Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          } else if (details.primaryVelocity! < 0) {
            // Swipe to the next page
            pageController.nextPage(
              duration: Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          }
        },
        child: Column(
          children: <Widget>[
            Expanded(
              child: PageView(
                controller: pageController,
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                  });
                },
                children: <Widget>[
                  Page(
                      title: 'Explore \nWith Your Way',
                      desc:
                          'Embark on a virtual journey through stunning destinations worldwide.',
                      imagePath: 'Images/landingPage1.png'),
                  Page(
                      title: 'Discover \nLocal Gems',
                      desc:
                          'Uncover hidden gems and local favorites recommended by fellow travelers.',
                      imagePath: 'Images/landingPage2.png'),
                  Page(
                      title: 'Plan \nYour Perfect Trip',
                      desc:
                          'Create personalized itineraries tailored to your preferences and interests.',
                      imagePath: 'Images/landingPage3.png'),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buildPageIndicator(0),
                buildPageIndicator(1),
                buildPageIndicator(2),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3), // Shadow color
                    blurRadius: 1,
                    spreadRadius: 0,
                    offset: Offset(0, 6), // Offset in x and y directions
                  ),
                ],
              ),
              child: ElevatedButton(
                onPressed: () {
                  Get.off(
                        () => RegisterPage(title: ""),
                    transition: Transition.fadeIn,
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFFFDA33), // Set the button color
                  minimumSize: Size(
                    MediaQuery.of(context).size.width * 0.8, // 80% of the screen width
                    70, // Set a fixed height
                  ),
                ),
                child: Text(
                  'Get started',
                  style: GoogleFonts.elMessiri(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 190,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPageIndicator(int pageIndex) {
    return GestureDetector(
      onTap: () {
        pageController.animateToPage(
          pageIndex,
          duration: Duration(milliseconds: 300),
          curve: Curves.ease,
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 4),
        width: 18,
        height: 18,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: currentPage == pageIndex ? Color(0xFFFFDA33) : Colors.white,
        ),
      ),
    );
  }
}

class Page extends StatelessWidget {
  final String title;
  final String desc;
  final String imagePath;

  Page({required this.title, required this.desc, this.imagePath = ""});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF4A7971), // Set the background color here
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            imagePath,
            width: 300, // Sesuaikan lebar gambar sesuai kebutuhan
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: GoogleFonts.elMessiri(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    height: 1.4,
                    color: Color(0xFFFFFFFF),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  desc,
                  style: GoogleFonts.elMessiri(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    height: 1.4,
                    color: Color(0xFFFFFFFF),
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
