import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:kt_travel/Register/login.dart';
import 'package:kt_travel/UI/booking_review.dart';
import 'package:kt_travel/UI/exotic_place.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';

import '../UI/home.dart';
import '../controller/authController.dart';
import '../helper/show_loading.dart';
import '../helper/snackbar.dart';

class ApiService {
  final baseUrl = "cruxtech.in";
  final _header = {
    'Content-type': 'application/json',
    'Accept': 'application/json',
  };
  Future<Map?> logIn(
    String email,
    String pass,
  ) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool rememberMe = GetStorage().read('remember_me') ?? false;
    showLoading();
    if (rememberMe) {
      await prefs.setString('email', email);
      await prefs.setString('password', pass);
    }
    var client = http.Client();
    Uri uri = Uri.https(baseUrl, 'api/login.php');
    log("uri: " + uri.toString());

    try {
      var _body = json.encode({"email": email, "password": pass});
      log("body: " + _body);
      var response = await client.post(uri, headers: _header, body: _body);
      Map<String, dynamic> _res = jsonDecode(response.body);
      log("response: " + _res.toString());
      log("status code" + response.statusCode.toString());
      if (response.statusCode == 200) {
        dismissLoadingWidget();
        if (_res["status"] == 1) {
          log("Log in success");
          authController.user = _res["data"];
          Get.to(ReviewDetail());
          showSnakbar("Welcome !", "Login Successful");
        } else {
          log("log in failed");
          showSnakbar("Error !", "Email and Password invalid");
        }
      }

      // showBottomToast("Error", error.msg.toString());
      // showToastMessage(error.msg, Icons.error);

      // log("error: " + error.msg.toString());
      return null;
    } on SocketException catch (e) {
      dismissLoadingWidget();
      // showToastMessage("No Internet Connection", Icons.error);
      log("no internet catch: " + e.toString());
      return null;
    } catch (e) {
      dismissLoadingWidget();
      // showToastMessage(e.toString(), Icons.error);
      log("error catch: " + e.toString());
      return null;
    }
  }

  Future<Map?> Signup(
      String username, String email, String mobile, String password) async {
    showLoading();
    var client = http.Client();
    Uri uri = Uri.https(baseUrl, 'api/signup.php');
    log("uri: " + uri.toString());

    try {
      var _body = json.encode({
        'username': username,
        'email': email,
        'mobile': mobile,
        'password': password,
      });
      log("body: " + _body);
      var response = await client.post(uri, headers: _header, body: _body);
      Map<String, dynamic> _res = jsonDecode(response.body);
      log("response: " + _res.toString());
      log("status code" + response.statusCode.toString());
      if (response.statusCode == 200) {
        dismissLoadingWidget();
        if (_res["status"] == 1) {
          log("signup in success");
          showSnakbar("Congratulation !", "Signup successful");
          //  authController.fulldata = _res["data"];
          Get.offAll(LoginScreen());
          //    authController.user = _res["data"];
          // Get.offAll(logIn(
          //     authController.user.toString(), authController.user.toString()));
        } else {
          log("Mobile Number Or Email already registered");
          showSnakbar(
              "Try Again !", "Mobile Number or Email already registered");
        }
      }

      // showBottomToast("Error", error.msg.toString());
      // showToastMessage(error.msg, Icons.error);

      // log("error: " + error.msg.toString());
      // return userdata;
      return null;
    } on SocketException catch (e) {
      dismissLoadingWidget();
      // showToastMessage("No Internet Connection", Icons.error);
      log("no internet catch: " + e.toString());
      return null;
    } catch (e) {
      dismissLoadingWidget();
      // showToastMessage(e.toString(), Icons.error);
      log("error catch: " + e.toString());
      return null;
    }
  }

  // Future<Map?> Signup(Map<String, dynamic>? userdata) async {
  //   showLoading();
  //   var client = http.Client();
  //   Uri uri = Uri.https(baseUrl, 'api/signup.php');
  //   log("uri: " + uri.toString());

  //   try {
  //     var _body = json.encode({userdata});
  //     log("body: " + _body);
  //     var response = await client.post(uri, headers: _header, body: _body);
  //     Map<String, dynamic> _res = jsonDecode(response.body);
  //     log("response: " + _res.toString());
  //     log("status code" + response.statusCode.toString());
  //     if (response.statusCode == 200) {
  //       dismissLoadingWidget();
  //       if (_res["status"] == 1) {
  //         log("signup in success");
  //         //    authController.user = _res["data"];
  //         // Get.offAll(logIn(
  //         //     authController.user.toString(), authController.user.toString()));
  //       } else {
  //         log("Mobile Number Or Email already registered");
  //       }
  //     }

  //     // showBottomToast("Error", error.msg.toString());
  //     // showToastMessage(error.msg, Icons.error);

  //     // log("error: " + error.msg.toString());
  //     // return userdata;
  //     return null;
  //   } on SocketException catch (e) {
  //     dismissLoadingWidget();
  //     // showToastMessage("No Internet Connection", Icons.error);
  //     log("no internet catch: " + e.toString());
  //     return null;
  //   } catch (e) {
  //     dismissLoadingWidget();
  //     // showToastMessage(e.toString(), Icons.error);
  //     log("error catch: " + e.toString());
  //     return null;
  //   }
  // }

  Future<List<dynamic>> exoticLocation() async {
    //showLoading();
    var client = http.Client();
    Uri uri = Uri.https(baseUrl, 'api/exoticlocations.php');
    log("uri: " + uri.toString());

    try {
      var response = await client.post(uri, headers: _header, body: null);
      Map<String, dynamic> _res = jsonDecode(response.body);
      // log("response: " + _res.toString());
      log("status code" + response.statusCode.toString());
      if (response.statusCode == 200) {
        dismissLoadingWidget();
        if (_res["status"] == 1) {
          return _res['data'];
        } else {
          return [];
        }
      }

      return [];
    } on SocketException catch (e) {
      dismissLoadingWidget();
      // showToastMessage("No Internet Connection", Icons.error);
      log("no internet catch: " + e.toString());
      return [];
    } catch (e) {
      dismissLoadingWidget();
      // showToastMessage(e.toString(), Icons.error);
      log("error catch: " + e.toString());
      return [];
    }
  }

  Future<List<dynamic>> deals() async {
    //showLoading();
    var client = http.Client();
    Uri uri = Uri.https(baseUrl, 'api/Deals.php');
    log("uri: " + uri.toString());

    try {
      var response = await client.post(uri, headers: _header, body: null);
      Map<String, dynamic> _res = jsonDecode(response.body);
      // log("response: " + _res.toString());
      log("status code" + response.statusCode.toString());
      if (response.statusCode == 200) {
        dismissLoadingWidget();
        if (_res["status"] == 1) {
          return _res['data'];
        } else {
          return [];
        }
      }

      return [];
    } on SocketException catch (e) {
      dismissLoadingWidget();
      // showToastMessage("No Internet Connection", Icons.error);
      log("no internet catch: " + e.toString());
      return [];
    } catch (e) {
      dismissLoadingWidget();
      // showToastMessage(e.toString(), Icons.error);
      log("error catch: " + e.toString());
      return [];
    }
  }

  Future<Map> indexPage() async {
    //showLoading();
    var client = http.Client();
    Uri uri = Uri.https(baseUrl, 'api/indexpage.php');
    log("uri: " + uri.toString());

    try {
      var response = await client.post(uri, headers: _header, body: null);
      Map<String, dynamic> _res = jsonDecode(response.body);
      // log("response: " + _res.toString());
      log("status code" + response.statusCode.toString());
      if (response.statusCode == 200) {
        dismissLoadingWidget();
        if (_res["status"] == 1) {
          return _res['data'];
        } else {
          return {};
        }
      }

      return {};
    } on SocketException catch (e) {
      dismissLoadingWidget();
      // showToastMessage("No Internet Connection", Icons.error);
      log("no internet catch: " + e.toString());
      return {};
    } catch (e) {
      dismissLoadingWidget();
      // showToastMessage(e.toString(), Icons.error);
      log("error catch: " + e.toString());
      return {};
    }
  }

  Future<Map> logo() async {
    //showLoading();
    var client = http.Client();
    Uri uri = Uri.https(baseUrl, 'api/logo.php');
    log("uri: " + uri.toString());

    try {
      var response = await client.post(uri, headers: _header, body: null);
      Map<String, dynamic> _res = jsonDecode(response.body);
      // log("response: " + _res.toString());
      log("status code" + response.statusCode.toString());
      if (response.statusCode == 200) {
        dismissLoadingWidget();
        if (_res["status"] == 1) {
          return _res['data'];
        } else {
          return {};
        }
      }

      return {};
    } on SocketException catch (e) {
      dismissLoadingWidget();
      // showToastMessage("No Internet Connection", Icons.error);
      log("no internet catch: " + e.toString());
      return {};
    } catch (e) {
      dismissLoadingWidget();
      // showToastMessage(e.toString(), Icons.error);
      log("error catch: " + e.toString());
      return {};
    }
  }
}
