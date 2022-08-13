import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

// Created By @s1rbl4ck
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login App',
      home: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            child: Stack(
              children: [
                Positioned(
                  top: 200,
                  left: -100,
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: const BoxDecoration(
                      color: Color(0x304599ff),
                      borderRadius: BorderRadius.all(
                        Radius.circular(150),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: -10,
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: const BoxDecoration(
                      color: Color(0x30cc33ff),
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 80,
                      sigmaY: 80,
                    ),
                    child: Container(),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 70,
                        ),
                        _logo(),
                        const SizedBox(
                          height: 30,
                        ),
                        _loginLabel(),
                        const SizedBox(
                          height: 50,
                        ),
                        _labelTextInput("Email", "email@example.com", false),
                        const SizedBox(
                          height: 50,
                        ),
                        _labelTextInput("Password", "********", true),
                        const SizedBox(
                          height: 50,
                        ),
                        _loginBtn(),
                        const SizedBox(
                          height: 50,
                        ),
                        _signUpLabel(
                          "Don't have an account yet?",
                          const Color(0xff909090),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        _signUpLabel(
                          "Sign Up",
                          const Color(0xff164276),
                        ),
                        const SizedBox(
                          height: 90,
                        ),
                      ],
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

Widget _signUpLabel(String label, Color textColor) {
  return Text(
    label,
    style: GoogleFonts.josefinSans(
      textStyle: TextStyle(
        color: textColor,
        fontWeight: FontWeight.w800,
        fontSize: 18,
      ),
    ),
  );
}

Widget _loginBtn() {
  return Container(
    width: double.infinity,
    height: 60,
    decoration: const BoxDecoration(
      color: Color(0xff008fff),
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    child: TextButton(
      onPressed: () {
        Get.snackbar(
          'Successfull Log In',
          'You have successfully logged in.',
          overlayBlur: 0,
          backgroundColor: Colors.greenAccent,
          margin: EdgeInsets.only(top: 20, left: 20, right: 20),
        );
      },
      child: Text(
        "Login",
        style: GoogleFonts.josefinSans(
          textStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: 24,
          ),
        ),
      ),
    ),
  );
}

Widget _labelTextInput(String label, String hintText, bool isPassword) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: GoogleFonts.josefinSans(
          textStyle: const TextStyle(
            color: Color(0xff8fa1b6),
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),
      TextField(
        obscureText: isPassword,
        cursorColor: Colors.cyanAccent[300],
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Color(0xffc5d2e1),
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffdfe8f3),
            ),
          ),
        ),
      ),
    ],
  );
}

Widget _loginLabel() {
  return Center(
    child: Text(
      "Login",
      style: GoogleFonts.josefinSans(
        textStyle: const TextStyle(
          color: Color(0xff191919),
          fontWeight: FontWeight.w900,
          fontSize: 34,
        ),
      ),
    ),
  );
}

Widget _logo() {
  return Center(
    child: SizedBox(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.network(
            "https://avatars.githubusercontent.com/u/51126010?v=4"),
      ),
      height: 80,
    ),
  );
}
