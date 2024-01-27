import 'package:festivalapp/Screens/post_pages/all_post.dart';
import 'package:festivalapp/Screens/post_pages/home_page.dart';
import 'package:festivalapp/Screens/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Screens/company_info/company_detail.dart';
import 'Screens/post_pages/detail_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      routes: {
        '/': (context) => const SplashScreen(),
        'company_detail': (context) => const CompanyDetail(),
        'home_page': (context) => const HomePage(),
        'all_posts': (context) => const AllPosts(),
        'detail_page': (context) => const DetailPage(),
      },
    ),
  );
}
