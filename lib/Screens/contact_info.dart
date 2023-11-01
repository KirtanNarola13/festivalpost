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
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Container(
              height: 50,
              child: Text(
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
            child: Column(
              children: [
                TextFormField(
                  onSaved: (String? val) {
                    Global.companyEmailController.text = val!;
                  },
                  validator: (val) {
                    if (val!.isEmpty || ) {
                      return 'Please enter company name';
                    }
                  },
                  controller: Global.companyNameController,
                  decoration: const InputDecoration(
                    hintText: 'Company Name',
                    labelText: 'Company Name',
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
