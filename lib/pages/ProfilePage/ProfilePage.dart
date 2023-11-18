import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metal_marketplace/helper/themes.dart';
import 'package:metal_marketplace/pages/ProfilePage/controller/profile_controller.dart';

class ProfilePage extends StatelessWidget {
  final ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Stack(
                          children: [
                            Obx(() {
                              final _image = profileController.image;
                              return _image != null
                                  ? CircleAvatar(
                                backgroundColor: Colors.grey,
                                radius: 64,
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                        Colors.black.withOpacity(0.3),
                                        blurRadius: 8,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                ),
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
                                        Colors.black.withOpacity(0.3),
                                        blurRadius: 8,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                            Positioned(
                              bottom: 1,
                              left: 74,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: primaryColor,
                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    profileController.selectImage();
                                  },
                                  icon: Icon(
                                    Icons.add_a_photo,
                                    size: 38,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                          height:
                          16), // Add space between the circle and the text
                      Text(
                        'Username',
                        style: titletext,
                      ),
                      Text(
                        'Email',
                        style: commonRoboto,
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
                              padding: EdgeInsets.only(left: 32, right: 102),
                              child: Text(
                                'Account',
                                style: buttonRoboto,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              elevation: 0,
                            ),
                          ),
                          SizedBox(height: 16), // Add space between the buttons
                          ElevatedButton.icon(
                            onPressed: () {
                              // Handle button 2 tap
                            },
                            icon: Image.asset(
                              lock, // Replace with your actual icon asset for button 2
                              width: 60,
                            ),
                            label: Padding(
                              padding: EdgeInsets.only(left: 32, right: 32),
                              child: Text(
                                'Change Password',
                                style: buttonRoboto,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              elevation: 0,
                            ),
                          ),
                          SizedBox(height: 60), // Add space between the buttons
                          ElevatedButton.icon(
                            onPressed: () {
                              // Handle button 2 tap
                            },
                            icon: Image.asset(
                              logout, // Replace with your actual icon asset for button 2
                              width: 60,
                            ),
                            label: Padding(
                              padding: EdgeInsets.only(left: 32, right: 102),
                              child: Text(
                                'Log Out',
                                style: buttonRoboto,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              elevation: 0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}