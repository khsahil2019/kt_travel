import 'dart:developer';

import 'package:flutter/material.dart';

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
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
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
              Image.asset(
                "assets/img/new_ideadesk.png",
                height: 100,
                width: 200,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Let's Travel with us !",
                style: TextStyle(
                    color: Colors.black, fontFamily: "Sail", fontSize: 25),
              )
            ],
          ),
        ));
  }
}
