import 'package:flutter/material.dart';
import 'package:login_page/homepage/homepage.dart';
import 'package:login_page/loginpage/login_page.dart';

import 'package:login_page/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    checkUserLogin();
    // gotoLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/flutter.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Future<void> gotoLogin() async {
    // final sharedPrefs = await SharedPreferences.getInstance();
    // await sharedPrefs.setBool(saveKey, true);
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
      return LoginPage();
    }));
    // Navigator.of(context).pushAndRemoveUntil(
    //     MaterialPageRoute(builder: (context) => HomePage()), (route) => false);
  }

  void checkUserLogin() async {
    final sharedPrefs = await SharedPreferences.getInstance();
    final value = sharedPrefs.getBool(saveKey);
    if (value == null || value == false) {
      gotoLogin();
    } else {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
    }
  }
}
