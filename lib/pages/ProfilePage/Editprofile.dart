import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metal_marketplace/helper/themes.dart';
import 'package:metal_marketplace/helper/textFrom.dart';
import 'package:metal_marketplace/pages/ProfilePage/ProfilePage.dart';
import 'package:metal_marketplace/pages/ProfilePage/controller/profile_controller.dart';

class EditProfile extends StatelessWidget {
  EditProfile({Key? key}) : super(key: key);
  final ProfileController profileController = Get.put(ProfileController());

  final TextEditingController ctrUsername = TextEditingController();
  final TextEditingController ctrEmail = TextEditingController();


  Widget myFormEdit(BuildContext context, IconData icon, String label, bool obscure, TextEditingController controller, String initialvalue) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    if (controller.text.isEmpty) {
      controller.text = initialvalue;
    }
    return TextFormField(
      controller: controller,
      cursorColor: primaryColor,
      decoration: InputDecoration(
        labelText: label,
        filled: true,
        fillColor: Colors.white,
        contentPadding:
        EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        prefixIcon: Icon(icon, color: greyFix),
        labelStyle: TextStyle(color: greyFix),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor),
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      style: textField,
      // Add other properties for your TextFormField
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: secondaryColor,
        title: Title(
          color: primaryTextColor,
          child: Container(
            child: Text(
              "Edit Profile",
              style: GoogleFonts.poppins(
                  fontSize: figmaFontsize(24), fontWeight: FontWeight.w600),
            ),
          ),
        ),
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
                              return Stack(
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: _image != null
                                        ? CircleAvatar(
                                            backgroundColor: Colors.grey,
                                            radius: 64,
                                            backgroundImage:
                                                MemoryImage(_image!),
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
                                                    color: Colors.black
                                                        .withOpacity(0.2),
                                                    blurRadius: 5,
                                                    offset: Offset(0, 1),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                  ),
                                  Positioned(
                                    bottom:
                                        3, // Adjust the bottom position as needed
                                    right:
                                        3, // Adjust the right position as needed
                                    child: GestureDetector(
                                      onTap: () {
                                        profileController
                                            .selectImage(); // Add your camera icon action here
                                      },
                                      child: CircleAvatar(
                                        radius: 20,
                                        backgroundColor: primaryColor,
                                        child: Icon(
                                          Icons.add_a_photo,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }),
                          ],
                        ),
                      ),
                      SizedBox(height: 50),
                      myFormEdit(context, Icons.account_box,"Username", false , ctrUsername,profileController.ctrUsername.value),
                      SizedBox(
                        height: 30,
                      ),
                      myFormEdit(context, Icons.email,"Email", false , ctrEmail,profileController.ctrEmail.value),
                      SizedBox(
                        height: 70,
                      ),
                      Container(
                        child: ElevatedButton(
                          onPressed: () {
                            profileController.editProfile(ctrUsername.text.toString(),  ctrEmail.text.toString());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor,
                            minimumSize:
                            Size.fromHeight(screenHeight * 0.070),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Change',
                            style: headerText,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: ElevatedButton(
                          onPressed: () {
                            Get.off(ProfilePage());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            minimumSize:
                            Size.fromHeight(screenHeight * 0.070),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Back',
                            style: headerText,
                          ),
                        ),
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
