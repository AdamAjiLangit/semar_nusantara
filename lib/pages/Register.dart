import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:metal_marketplace/controllers/RegistrasiProfileController.dart';
import 'package:metal_marketplace/pages/HomePage.dart';
import 'package:metal_marketplace/pages/LoginPage.dart';
import '../helper/imagePicker.dart';
import 'ProfilePage.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key, required String title});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  Uint8List? _image;
  final RegistrasiProfileController controller =
      Get.put(RegistrasiProfileController());
  late TextEditingController usernameController = TextEditingController();
  late TextEditingController emailController = TextEditingController();
  late TextEditingController passwordController = TextEditingController();
  bool _isObsecure = true;

  @override
  void initState() {
    super.initState();
    usernameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  void _selectImage() async {
    Uint8List img = await pickImage(ImageSource.gallery);
    setState(() {
      _image = img;
    });
  }

  void signUpFunction(Uint8List? image) {
    if (usernameController.text.isEmpty ||
        emailController.text.isEmpty ||
        passwordController.text.isEmpty) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Warning"),
            content: Text("Please enter your data!"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("OK"),
              ),
            ],
          );
        },
      );
    } else {
      controller.registrasiProfile(
        usernameController.text,
        emailController.text,
        passwordController.text,
        _image,
      );
      Get.off(
            () => ProfilePage(image: _image),
        transition: Transition.fadeIn,
      );
    }
  }

  void _toggleObsecure(bool isObsecure) {
    setState(() {
      _isObsecure = isObsecure;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Stack(
                      children: [
                        Stack(
                          children: [
                            _image != null
                                ? CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 100,
                                    backgroundImage: MemoryImage(_image!),
                                  )
                                : CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 100,
                                    backgroundImage: NetworkImage('_image'),
                                  ),
                            Positioned(
                              bottom: 1,
                              left: 134,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(
                                      255, 218, 51, 1.0), // Warna RGBA
                                  shape: BoxShape
                                      .circle, // Untuk membuat latar belakang berbentuk lingkaran
                                ),
                                child: IconButton(
                                  onPressed: _selectImage,
                                  icon: Icon(
                                    Icons.add_a_photo,
                                    size: 38,
                                    color: Colors.black, // Warna ikon
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
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
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // Align children to the top (start) of the column.
                    children: [
                      Text(
                        "Username",
                        style: GoogleFonts.poppins(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      // Other widgets can be added here
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: usernameController,
                    cursorColor: Color(0xFFFFDA33),
                    decoration: InputDecoration(
                      labelText: "Username",
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(1.0),
                        child: Image.asset(
                          'images/iconEmail.png',
                          width: 24,
                          height: 24,
                        ),
                      ),
                      labelStyle: TextStyle(color: Color(0xFF9F9F9F)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFFFDA33)),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFFFDA33)),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior
                          .never, // Label text will not float.
                    ),
                    style: TextStyle(color: Colors.black),
                    // Add other properties for your TextFormField
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // Align children to the top (start) of the column.
                    children: [
                      Text(
                        "Email",
                        style: GoogleFonts.poppins(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      // Other widgets can be added here
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: emailController,
                    cursorColor: Color(0xFFFFDA33),
                    decoration: InputDecoration(
                      labelText: "@Email.com",
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(1.0),
                        child: Image.asset(
                          'images/iconEmail.png',
                          width: 24,
                          height: 24,
                        ),
                      ),
                      labelStyle: TextStyle(color: Color(0xFF9F9F9F)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFFFDA33)),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFFFDA33)),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior
                          .never, // Label text will not float.
                    ),
                    style: TextStyle(color: Colors.black),
                    // Add other properties for your TextFormField
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // Align children to the top (start) of the column.
                    children: [
                      Text(
                        "Password",
                        style: GoogleFonts.poppins(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      // Other widgets can be added here
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: passwordController,
                    obscureText: _isObsecure,
                    cursorColor: Color(0xFFFFDA33),
                    decoration: InputDecoration(
                      labelText: "Password",
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(1.0),
                        child: Image.asset(
                          'images/iconPassword.png',
                          width: 24,
                          height: 24,
                        ),
                      ),
                      labelStyle: TextStyle(color: Color(0xFF9F9F9F)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFFFDA33)),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFFFDA33)),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior
                          .never, // Label text will not float.
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _isObsecure = !_isObsecure;
                          });
                        },
                        child: Icon(
                          // Show an eye icon to toggle password visibility
                          _isObsecure ? Icons.visibility_off : Icons.visibility,
                          color: Color(0xFF9F9F9F),
                        ),
                      ),
                    ),
                    style: TextStyle(color: Colors.black),
                    // Add other properties for your TextFormField
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.off(
                        () => LoginPage(title: ""),
                        transition: Transition.fadeIn,
                      );
                    },
                    child: Container(
                      child: Text(
                        "Already have an account?",
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
                    height: 20,
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
                        signUpFunction(_image);
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
                        "Sign Up",
                        style: GoogleFonts.lato(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "or",
                    style: GoogleFonts.lato(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
                              () => HomePage(),
                          transition: Transition.fadeIn,
                        );
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
                        "Continue as Guest",
                        style: GoogleFonts.lato(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
