import 'dart:async';

import 'package:festivalapp/Screens/post_pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'company_info/company_detail.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, 'company_detail');
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
            flex: 7,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/Images/splashScreen.gif'),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: const Text(
                "Festival Post",
                style: TextStyle(
                    color: Colors.blue, fontSize: 22, letterSpacing: 3),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
