import 'dart:developer';

import 'package:flutter/material.dart';
import '../../Global/global.dart';
import 'package:email_validator/email_validator.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({super.key});

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  @override
  Widget build(BuildContext context) {
    final _contactKey = GlobalKey<FormState>();
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
                key: _contactKey,
                child: Column(
                  children: [
                    TextFormField(
                      onSaved: (String? val) {
                        Global.companyEmailController.text = val!;
                      },
                      controller: Global.companyEmailController,
                      decoration: const InputDecoration(
                        hintText: 'Email',
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        assert(EmailValidator.validate(value!));
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      onSaved: (String? val) {
                        Global.companyNumberController.text = val!;
                      },
                      controller: Global.companyNumberController,
                      decoration: const InputDecoration(
                        hintText: 'Mobile Number',
                        labelText: 'Mobile Number',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            value.length < 10 ||
                            value.length > 10) {
                          return 'Please enter a valid mobile number';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 80,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_contactKey.currentState!.validate()) {
                            setState(() {
                              Navigator.pushReplacementNamed(
                                  context, 'home_page');
                              Global.companyEmail =
                                  Global.companyEmailController.text;
                              log(Global.companyEmail);
                              Global.companyNumber =
                                  Global.companyNumberController.text;
                              log(Global.companyNumber);

                              Global.companyEmailController.clear();
                              Global.companyNumberController.clear();
                            });
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Company Name Is Required'),
                              ),
                            );
                          }
                        },
                        child: const Text(
                          'SAVE',
                          style: TextStyle(fontSize: 16),
                        ),
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
