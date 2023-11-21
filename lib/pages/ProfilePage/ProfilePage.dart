import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metal_marketplace/helper/themes.dart';
import 'package:metal_marketplace/pages/ProfilePage/Editprofile.dart';
import 'package:metal_marketplace/pages/ProfilePage/controller/profile_controller.dart';

class ProfilePage extends StatelessWidget {
  ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: secondaryColor,
        title: Text(
          'Profile',
          style: GoogleFonts.poppins(
              fontSize: figmaFontsize(24), fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Positioned(
            top: AppBar().preferredSize.height +
                10, // Adjust the top position as needed
            left: 0,
            right: 0,
            child: SafeArea(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Obx(
                    () {
                      final _image = profileController.image;
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Stack(children: [
                              _image != null
                                  ? CircleAvatar(
                                      backgroundColor: Colors.grey,
                                      radius: 64,
                                      backgroundImage: MemoryImage(_image!),
                                    )
                                  : CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 64,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.1),
                                              blurRadius: 8,
                                              offset: Offset(0, 1),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                            ]),
                          ),
                          SizedBox(
                              height:
                                  16), // Add space between the circle and the text
                          Center(
                            child: Text(
                              profileController.ctrUsername.value,
                              style: titletext,
                            ),
                          ),
                          Center(
                            child: Text(
                              profileController.ctrEmail.value,
                              style: commonRoboto,
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Column(
                            children: [
                              ElevatedButton.icon(
                                onPressed: () {
                                  // Handle button 1 tap
                                },
                                icon: Image.asset(
                                  setting, // Replace with your actual icon asset for button 1
                                  width: 60,
                                ),
                                label: Padding(
                                  padding:
                                      EdgeInsets.only(left: screenWidth * 0.12),
                                  child: Text(
                                    'Account',
                                    style: buttonRoboto,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  shadowColor: Color(0xFFF4F4F4),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(22.0),
                                  ),
                                ),
                              ),
                              SizedBox(
                                  height: 16), // Add space between the buttons
                              ElevatedButton.icon(
                                onPressed: () {
                                  Get.to(EditProfile());
                                },
                                icon: Image.asset(
                                  lock, // Replace with your actual icon asset for button 2
                                  width: 60,
                                ),
                                label: Padding(
                                  padding:
                                      EdgeInsets.only(left: screenWidth * 0.08),
                                  child: Text(
                                    'Edit Profile',
                                    style: buttonRoboto,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  shadowColor: Color(0xFFF4F4F4),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(22.0),
                                  ),
                                ),
                              ),
                              SizedBox(
                                  height: 60), // Add space between the buttons
                              ElevatedButton.icon(
                                onPressed: () {
                                  profileController.logOut();
                                },
                                icon: Image.asset(
                                  logout, // Replace with your actual icon asset for button 2
                                  width: 60,
                                ),
                                label: Padding(
                                  padding:
                                      EdgeInsets.only(left: screenWidth * 0.12),
                                  child: Text(
                                    'Log Out',
                                    style: buttonRoboto,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  shadowColor: Color(0xFFF4F4F4),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(22.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
