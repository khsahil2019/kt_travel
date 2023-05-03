import 'dart:convert';
import 'dart:developer';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:io';

import '../UI/home.dart';
import '../controller/authController.dart';
import '../helper/show_loading.dart';

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
    showLoading();
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
          Get.offAll(HomePage());
        } else {
          log("log in failed");
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
}
