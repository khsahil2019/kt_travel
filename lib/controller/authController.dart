import 'dart:developer';

import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../helper/show_loading.dart';

AuthController authController = AuthController.instance;

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  Map? user;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    log("AuthController onInit");
  }

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
