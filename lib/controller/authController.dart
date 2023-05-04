import 'dart:developer';

import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../helper/show_loading.dart';

AuthController authController = AuthController.instance;

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  Map? user;
// Map? fulldata;
  @override
  void onInit() {
    // TODO: implement onInit

    super.onInit();
    log("AuthController onInit");
  }

//  actionRemeberMe(bool value) {
//     _rememberMe = value;
//     SharedPreferences.getInstance().then(
//       (prefs) {
//         prefs.setBool("remember_me", value);
//         prefs.setString('email', _emailController.text);
//         prefs.setString('userId', _passwordController.text);
//       },
//     );
  void signInWithGoogle() async {
    showLoading();
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    try {
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      if (googleAuth != null) {
        //  final credential = GoogleAuthProvider.credential(
        //       accessToken: googleAuth.accessToken,
        //       idToken: googleAuth.idToken,
        //     );
      }
    } catch (e) {}
  }
}
