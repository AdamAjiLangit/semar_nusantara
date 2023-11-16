import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:metal_marketplace/controllers/register_controller.dart';
import 'package:metal_marketplace/helper/themes.dart';
import 'package:metal_marketplace/helper/textFrom.dart';
import 'package:metal_marketplace/pages/LoginPage.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);
  RegisterController controller = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFF4A7971),
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.account_circle,
                      size: screenWidth * 0.4, // Adjust the size as needed
                      color: Color(0xFFFFDA33), // Adjust the color as needed
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Register",
                      style: GoogleFonts.poppins(
                        fontSize: 36,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                            left: screenWidth * 0.05,
                            right: screenWidth * 0.05,
                            top: screenHeight * 0.020),
                        child: myForm(context, Icons.account_circle, 'Name', false,
                            TextInputType.name, controller.cName)),
                    Padding(
                        padding: EdgeInsets.only(
                            left: screenWidth * 0.05,
                            right: screenWidth * 0.05,
                            top: screenHeight * 0.020),
                        child: myForm(context, Icons.account_circle, 'Username',
                            false, TextInputType.text, controller.cUsername)),
                    Padding(
                        padding: EdgeInsets.only(
                            left: screenWidth * 0.05,
                            right: screenWidth * 0.05,
                            top: screenHeight * 0.020),
                        child: myForm(context, Icons.email, 'Email', false,
                            TextInputType.emailAddress, controller.cEmail)),
                    Padding(
                      padding: EdgeInsets.only(
                          left: screenWidth * 0.05,
                          right: screenWidth * 0.05,
                          top: screenHeight * 0.020),
                      child: Obx(() {
                        return myPassword(
                          context,
                          Icons.lock,
                          'Password',
                          controller.passwordObscure.value,
                          TextInputType.visiblePassword,
                          controller.cPass,
                          () {
                            controller.togglePasswordVisibility();
                          },
                        );
                      }),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.off(
                              () => LoginPage(),
                          transition: Transition.fadeIn,
                        );
                      },
                      child: Container(
                        child: Text(
                          "don`t have account?",
                          style: GoogleFonts.lato(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFFF),
                            decoration: TextDecoration.underline,
                            shadows: [
                              BoxShadow(
                                color:
                                Colors.black.withOpacity(0.5), // Shadow color
                                blurRadius:
                                1, // Increase blurRadius for a softer shadow
                                offset:
                                Offset(0, 4), // Offset in x and y directions
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: screenHeight * 0.01),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: screenHeight * 0.010),

                      child: ElevatedButton(
                        onPressed: () {
                          controller.Register();
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFFFDA33), // Set the button color
                          minimumSize: Size(
                            MediaQuery.of(context).size.width *
                                0.8, // 80% of the screen width
                            70, // Set a fixed height
                          ),
                        ),
                        child: Text(
                          'Register',
                          style: TextStyle(color: primaryColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
