import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/login_screen.dart';
import '../themes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Get.offAll(const LoginScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Image.asset(
          'assets/images/paste-logo.png',
          width: 200,
        ),
      ),
    );
  }
}
