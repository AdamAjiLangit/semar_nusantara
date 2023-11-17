import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:metal_marketplace/pages/RegisterPage/register_page.dart';

import 'controller/Login_Controller.dart';
import '../../helper/textFrom.dart';
import '../../helper/themes.dart';
import '../../routes/route_name.dart';

class LoginPage extends StatelessWidget {
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Obx(() => controller.isLoading.value
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  child: Stack(
                    children: [
                      SafeArea(
                        child: SingleChildScrollView(
                          child: Container(
                            margin: EdgeInsets.only(right: 35.0, top: 32.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Image.asset(
                                      logo,
                                      width: 150,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.only(left: 35.0, top: 32.0),
                                  child: Text(
                                    'Sign in',
                                    style: headerelMessiri,
                                  ),
                                ),
                                SizedBox(
                                  height: 60,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 35.0),
                                  child: myForm(
                                    context,
                                    Icons.email,
                                    'Email',
                                    false,
                                    TextInputType.emailAddress,
                                    controller.cUsername,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 35.0),
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
                                    padding: EdgeInsets.symmetric(
                                        vertical: screenHeight * 0.020)),
                                SizedBox(
                                  height: 35,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 35.0),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      controller.Login();
                                      print(controller.isLoading.value);
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
                                      'Sign in',
                                      style: headerText,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 35,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 32.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Or", style: headerTextblack),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 35,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 32.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          print('Google icon clicked');
                                        },
                                        child: SvgPicture.asset(
                                          'Icon/google.svg',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 35,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 32.0),
                                  child: Center(
                                    child: RichText(
                                      text: TextSpan(
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: "didn’t have an account? ",
                                            style: appBarText,
                                          ),
                                          TextSpan(
                                            text: "Click here",
                                            style: TextStyle(
                                              color: primaryColor,
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                Get.to(RegisterPage());
                                              },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )));
  }
}
