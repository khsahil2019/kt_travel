import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

showLoading() {
  // TODO : BETTER DESIGN
  Get.defaultDialog(
      backgroundColor: Colors.white, //.withOpacity(1),
      titleStyle: const TextStyle(fontSize: 0),
      title: "Loading...",
      content: SpinKitFadingCube(
        color: Colors.blue,
        size: 50.0,
      ),
      // Row(
      //   children: const [
      //     CircularProgressIndicator(),
      //     SizedBox(width: 10,),
      //     Expanded(child: Text('Loading...'))
      //   ],
      // ),
      barrierDismissible: false);
}

dismissLoadingWidget() {
  // log("band hua");
  if (Get.isDialogOpen!) {
    Get.back();
  }
}
