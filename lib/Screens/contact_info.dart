import 'package:flutter/material.dart';
import '../Global/global.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({super.key});

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  @override
  Widget build(BuildContext context) {
    final _ContactKey = GlobalKey<FormState>();
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Container(
              height: 50,
              child: const Text(
                "FESTIVAL APP",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                  letterSpacing: 3,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Expanded(
            child: SafeArea(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/Images/companydetail.png'),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: Form(
                key: _ContactKey,
                child: Column(
                  children: [
                    TextFormField(
                      onSaved: (String? val) {
                        Global.companyEmailController.text = val!;
                      },
                      controller: Global.companyNameController,
                      decoration: const InputDecoration(
                        hintText: 'Company Email',
                        labelText: 'Company Email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      onSaved: (String? val) {
                        Global.companyEmailController.text = val!;
                      },
                      controller: Global.companyNameController,
                      decoration: const InputDecoration(
                        hintText: 'Company Email',
                        labelText: 'Company Email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
