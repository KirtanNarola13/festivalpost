import 'package:festivalapp/Screens/contact_info.dart';
import 'package:flutter/material.dart';
import 'Screens/company_detail.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const CompanyDetail(),
        'contact_info': (context) => const ContactInfo(),
      },
    ),
  );
}
