import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showSnakbar(String title, String message) async {
  Get.snackbar(
    title, message,
    // duration: Duration(minutes: 10),
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: Colors.blue.withOpacity(0.6),
    // barBlur: 0.5,
    isDismissible: true,
    margin: EdgeInsets.all(10),
    // overlayColor: Colors.yellow,
    // borderWidth: 2,
    // borderRadius: 0,
    // borderColor: AppColors.primary,
    colorText: Colors.white,
    titleText: Text(
      title,
      style: TextStyle(
          color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
    ),
    messageText: Text(
      message,
      style: TextStyle(
          color: Colors.white, fontSize: 16, fontWeight: FontWeight.normal),
    ),
  );
}
