import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kt_travel/Register/signup.dart';
import 'package:kt_travel/helper/theme.dart';

import '../Register/forgetpass.dart';
import '../services/apiservice.dart';
// import 'forgetpass.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get_storage/get_storage.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  Future<void> saveCredentials(String email, String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('email', email);
    await prefs.setString('password', password);
    GetStorage().write('remember_me', true);
  }

  @override
  Widget build(BuildContext context) {
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // String? email = prefs.getString('email');
    // String? password = prefs.getString('password');

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80.0),
              Text(
                'Login',
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                    fontFamily: "Sail"),
              ),
              SizedBox(height: 40.0),
              TextField(
                enabled: true,
                controller: _emailController,
                decoration: InputDecoration(
                    labelText: 'Enter your email',
                    // hintText: 'Enter your email',
                    // border: InputBorder.none,
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context)
                                .accentColor
                                .withOpacity(0.2)))),
              ),
              SizedBox(height: 20.0),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Password',
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color:
                                Theme.of(context).accentColor.withOpacity(0.2)))
                    // hintText: 'Enter your password',
                    // border: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(20.0),
                    // ),
                    ),
              ),
              SizedBox(height: 20.0),
              Row(
                children: [
                  Checkbox(
                    value: _rememberMe,
                    onChanged: (value) {
                      setState(() {
                        _rememberMe = value!;
                      });
                    },
                  ),
                  Text('Remember me'),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      // Navigate to forgot password screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ForgotScreen()),
                      );
                    },
                    child: Text('Forgot Password'),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  ApiService().logIn(_emailController.text.trim(),
                      _passwordController.text.trim());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Icon(Icons.mail),
                    //SizedBox(width: 8),
                    Text('Log in'),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Center(child: Text('OR   D\'not Have Account')),
              SizedBox(height: 20.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey, //background color of button
                ),
                onPressed: () {
                  Get.to(SignupPage());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Icon(Icons.mail),
                    /// SizedBox(width: 8),
                    Text('Sign up'),
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
