import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kt_travel/Register/login.dart';
import 'package:kt_travel/controller/authController.dart';

import 'home.dart';

// import 'dart:convert';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();

    // Wait for 3 seconds and then navigate to the next screen
    Future.delayed(Duration(seconds: 3), () {
      Get.to(LoginScreen());
      // Navigator.pushReplacement(
      //   context,
      //   MaterialPageRoute(builder: (context) => LoginScreen()),
      // );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                  "https://cruxtech.in/admin/uploadss/63b266716c21e622ca15f940_logo.png",
                  height: 100,
                  width: 200),
              // Image.asset(
              //   "assets/img/new_ideadesk.png",
              //   height: 100,
              //   width: 200,
              // ),
              SizedBox(
                height: 20,
              ),
              Text(
                "",
                style: TextStyle(
                    color: Colors.black, fontFamily: "Sail", fontSize: 25),
              )
            ],
          ),
        ));
  }
}
