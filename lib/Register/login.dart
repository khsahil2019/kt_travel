import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kt_travel/Register/signup.dart';
import 'package:kt_travel/helper/theme.dart';

import '../services/apiservice.dart';
import 'forgetpass.dart';
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
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
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
// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../widget.dart';

// class LogInScreen extends StatefulWidget {
//   @override
//   _LogInScreenState createState() => _LogInScreenState();
// }

// class _LogInScreenState extends State<LogInScreen> {
//   TextEditingController mobileCtrl = TextEditingController();
//   bool isActive = false;
//   @override
//   Widget build(BuildContext context) {
//     // return StoreConnector<AppState, Map<String, dynamic>>(converter: (store) {
//     // //   final Map<String, dynamic> args = {
//     //     "loadingState": store.state.loadingState,
//     //     "showToast": (String msg, ToastCode toastCode) =>
//     //         store.dispatch(ToastAction(msg, toastCode)),
//     //     "signIn": (String mob) async {
//     //       String _phone = "+91" + mob;
//     //       if (mob.isEmpty) {
//     //         store.dispatch(
//     //             ToastAction("Please enter a number", ToastCode.error));
//     //       } else {
//     //         // store.dispatch(NavigatorPushAction(AppRoutes.registerProfile));
//     //         store.dispatch(VerifyPhoneNumberAction(_phone, false));
//     //       }
//     //     },
//     //   };
//     //   return args;
//     // }, builder: (context, args) {
//     //   final Function signIn = args["signIn"];
//     //   final LoadingState loadingState = args["loadingState"];
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             margin: const EdgeInsets.symmetric(horizontal: 20),
//             child: ListView(
//               children: [
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const SizedBox(height: 30),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     SizedBox(
//                       width: 35,
//                     ),
//                     // Image.asset(
//                     //   "assets/img/key.png",
//                     //   width: 220,
//                     //   height: 220,
//                     // ),
//                   ],
//                 ),

//                 // Image.asset(
//                 //   "assets/img/key.png",
//                 //   width: 220,
//                 //   height: 220,
//                 // ),
//                 const SizedBox(height: 20),
//                 const Center(
//                   child: Text(
//                     "Login with your Mobile Number",
//                     style: TextStyle(
//                       color: Colors.lightBlue,
//                       fontSize: 20,
//                     ),
//                   ),
//                 ),
//                 Column(
//                   children: [
//                     Container(
//                       padding: EdgeInsets.symmetric(vertical: 20),
//                       decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(20),
//                           boxShadow: const [
//                             BoxShadow(
//                                 color: Colors.black45,
//                                 blurRadius: 8.0,
//                                 offset: Offset(5, 5)),
//                           ]),
//                       width: Get.width > 300 ? Get.width / 2 : 300,
//                       height: 200,
//                       margin: const EdgeInsets.all(20),
//                       child: Column(
//                         children: [
//                           Container(
//                             padding: const EdgeInsets.only(left: 10),
//                             margin: const EdgeInsets.symmetric(
//                                 horizontal: 30, vertical: 20),
//                             decoration: BoxDecoration(
//                                 color: Colors.grey[300],
//                                 borderRadius: BorderRadius.circular(8)),
//                             child: TextField(
//                               controller: mobileCtrl,
//                               keyboardType: TextInputType.phone,
//                               maxLength: 10,
//                               onChanged: (val) {
//                                 if (val.length == 10) {
//                                   FocusManager.instance.primaryFocus!.unfocus();
//                                   setState(() {
//                                     isActive = true;
//                                   });
//                                 }
//                               },
//                               decoration: const InputDecoration(
//                                   counterText: "",
//                                   border: InputBorder.none,
//                                   prefixIcon: Text("+91"),
//                                   prefixIconConstraints: BoxConstraints(
//                                       minHeight: 0, minWidth: 0)),
//                             ),
//                           ),
//                           const SizedBox(height: 30),
//                           //ElevatedButton(onPressed: () {}, child: Text("Continue"))
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               GestureDetector(
//                                   onTap: () {
//                                     if (isActive) {
//                                       // signIn(mobileCtrl.text);
//                                     }
//                                   },
//                                   child: buildButtonlog("Continue", isActive)),
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//           //  loadingIndicator(loadingState)
//         ],
//       ),
//     );
//     // }
//     // );
//   }

//   Widget buildButtonlog(String text, bool isActive, [double? width]) {
//     return Container(
//       width: 120,
//       padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
//       decoration: BoxDecoration(
//         color: isActive ? Colors.teal : Colors.white,
//         border: Border.all(color: Colors.teal, width: 0.5),
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Center(
//         child: Text(
//           text,
//           style: TextStyle(color: isActive ? Colors.white : Colors.teal),
//         ),
//       ),
//     );
//   }
// }
