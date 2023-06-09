import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:kt_travel/Register/login.dart';
import 'package:kt_travel/controller/authController.dart';
import 'package:kt_travel/services/apiservice.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

//Map userData = {"name": userData, "email": "", "mobile": "", "pass": ""};
Future<void> signUp(
    String username, String email, String mobile, String password) async {
  const url =
      'http://localhost/Tourism/Tourism%20Management%20System%20using%20PHP%20&%20MySQL%20-TMS/tms/api/signup.php';

  final response = await http.post(
    Uri.parse(url),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'username': username,
      'email': email,
      'mobile': mobile,
      'password': password,
    }),
  );

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    print(data);
  } else {
    print('Error: ${response.statusCode}');
  }
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController _firstNameController = TextEditingController();
  // TextEditingController _lastNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _mobileController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // SizedBox(
              //   height: 30,
              // ),
              // Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              //   GestureDetector(
              //       onTap: () {
              //         Get.back();
              //       },
              //       child: Icon(Icons.arrow_back_sharp)),
              //   GestureDetector(
              //       onTap: () {
              //         Get.to(LoginScreen());
              //         // Get.offAll(LogInScreen());
              //       },
              //       child: Text("Login"))
              // ]),
              // SizedBox(
              //   height: 30,
              // ),
              Text(
                "Sign up",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                  // fontFamily: "Sail"
                ),
              ),
              SizedBox(
                height: 60,
              ),
              TextField(
                controller: _firstNameController,
                decoration: InputDecoration(
                  labelText: 'First name',
                ),
              ),
              // SizedBox(height: 16),
              // TextField(
              //   controller: _firstNameController,
              //   decoration: InputDecoration(
              //     labelText: 'Last name',
              //   ),
              // ),
              SizedBox(height: 16),
              TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _mobileController,
                // obscureText: true,
                keyboardType: TextInputType.number,
                maxLength: 10,
                // enableSuggestions: true,
                decoration: InputDecoration(
                  labelText: 'Mobile Number',
                  counterText: "",
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),

              SizedBox(height: 56),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange, // Customize the button color here
                ),
                onPressed: () {
                  // _submitForm();
                  ApiService().Signup(
                      _firstNameController.text,
                      _emailController.text,
                      _mobileController.text,
                      _passwordController.text);
                  // .whenComplete(() => Get.offAll(() => LoginScreen()));
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => DetailPage()),
                  // );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Icon(Icons.mail),
                    //SizedBox(width: 8),
                    Text('Create account'),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Center(child: Text("or")),
              SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal, //background color of button
                ),
                onPressed: () {
                  Get.to(LoginScreen());
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => CategoryScreen()),
                  // );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Icon(Icons.mail),
                    // SizedBox(width: 8),
                    Text('Already have an account'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submitForm() {
    final username = _firstNameController.text;
    final email = _emailController.text;
    final mobile = _mobileController.text;
    final password = _passwordController.text;

    signUp(username, email, mobile, password);
  }
}
