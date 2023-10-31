import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:metal_marketplace/pages/HomePage.dart';
import 'package:metal_marketplace/pages/Register.dart';
import '../controllers/RegistrasiProfileController.dart';
import '../helper/textFrom.dart';

class ProfilePage extends StatelessWidget {
  final RegistrasiProfileController controller = Get.find();
  final Uint8List? image;
  String title = "";

  ProfilePage({required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4A7971),
      body: Container(
        child: Center(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 100),
                image != null
                    ? CircleAvatar(
                  radius: 100,
                  backgroundImage: MemoryImage(image!),
                )
                    : CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.white,
                ),
                SizedBox(height: 15),
                buildInfoBox("Username : ", controller.txtUsername.value),
                buildInfoBox("Email : ", controller.txtEmail.value),
                buildInfoBox("Password : ", controller.txtPassword.value),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 150),
                    child:
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        backgroundColor: Colors.cyan,
                        minimumSize: const Size(double.infinity, 45),
                      ),
                      child: const Text(
                        "Homepages",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child:
                    ElevatedButton(
                      onPressed: () {
                        Get.off(RegisterPage(title: title));
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        backgroundColor: Colors.red,
                        minimumSize: const Size(double.infinity, 45),
                      ),
                      child: const Text(
                        "Log Out",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}