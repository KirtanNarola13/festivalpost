import 'dart:developer';

import 'package:festivalapp/Global/global.dart';
import 'package:flutter/material.dart';

class CompanyDetail extends StatefulWidget {
  const CompanyDetail({super.key});

  @override
  State<CompanyDetail> createState() => _CompanyDetailState();
}

class _CompanyDetailState extends State<CompanyDetail> {
  final _NameKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
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
                padding: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.lock,
                      color: Colors.blue,
                      size: 50,
                    ),
                    Form(
                      key: _NameKey,
                      child: Column(
                        children: [
                          TextFormField(
                            onSaved: (String? val) {
                              Global.userNameController.text = val!;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            controller: Global.userNameController,
                            decoration: const InputDecoration(
                              labelText: 'User name',
                              labelStyle: TextStyle(color: Colors.blue),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(25),
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                    width: 5,
                                  )),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            onSaved: (String? val) {
                              Global.companyNameController.text = val!;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            controller: Global.companyNameController,
                            decoration: const InputDecoration(
                              labelText: 'Company Name',
                              labelStyle: TextStyle(color: Colors.blue),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25),
                                ),
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                  width: 5,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 90,
                            child: ElevatedButton(
                              onPressed: () {
                                if (_NameKey.currentState!.validate()) {
                                  setState(() {
                                    Navigator.pushReplacementNamed(
                                        context, 'contact_info');
                                    Global.companyName =
                                        Global.companyNameController.text;
                                    log(Global.companyName);
                                    Global.userName =
                                        Global.userNameController.text;
                                    log(Global.userName);

                                    Global.companyNameController.clear();
                                    Global.userNameController.clear();
                                  });
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content:
                                          Text('Company Detail Is Required'),
                                    ),
                                  );
                                }
                              },
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Next",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 16,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
