import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kt_travel/Register/login.dart';

import '../helper/snackbar.dart';

class ForgotScreen extends StatefulWidget {
  @override
  _ForgotScreenState createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  bool _rememberMe = false;
  TextEditingController _emailController = TextEditingController();
  //TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80.0),
              Text(
                'Forgot',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                  // fontFamily: "Sail"
                ),
              ),
              Text(
                'Password ?',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                  // fontFamily: "Sail"
                ),
              ),
              SizedBox(height: 40.0),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(20.0),
                  // ),
                ),
              ),
              SizedBox(height: 20.0),
              // TextField(
              //   controller: _passwordController,
              //   obscureText: true,
              //   decoration: InputDecoration(
              //     labelText: 'Password',
              //     hintText: 'Enter your password',
              //     // border: OutlineInputBorder(
              //     //   borderRadius: BorderRadius.circular(20.0),
              //     // ),
              //   ),
              // ),
              SizedBox(height: 100.0),

              //  SizedBox(height: 20.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange, // Customize the button color here
                ),
                onPressed: () {
                  showSnakbar("Success",
                      "Password has been sent to the given email address");
                  // const AsyncSnapshot.waiting();
                  Get.to(LoginScreen());

                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => VerifyScreen()),
                  // );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Send me now'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
