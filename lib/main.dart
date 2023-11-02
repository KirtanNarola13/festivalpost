import 'package:festivalapp/Screens/company_info/contact_info.dart';
import 'package:festivalapp/Screens/post_pages/all_post.dart';
import 'package:festivalapp/Screens/post_pages/home_page.dart';
import 'package:flutter/material.dart';
import 'Screens/company_info/company_detail.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      routes: {
        '/': (context) => const CompanyDetail(),
        'contact_info': (context) => const ContactInfo(),
        'home_page': (context) => const HomePage(),
        'all_posts': (context) => const AllPosts(),
      },
    ),
  );
}
