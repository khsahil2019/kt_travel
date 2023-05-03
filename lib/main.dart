import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

// import 'package:webview_flutter/webview_flutter.dart';

import 'UI/splash.dart';
import 'controller/allbindings.dart';
import 'helper/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeClass.lightTheme,
      initialBinding: AuthBinding(),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'K T Travel APP'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SplashScreen());
  }
}
