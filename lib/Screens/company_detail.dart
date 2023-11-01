import 'dart:developer';

import 'package:festivalapp/Global/global.dart';
import 'package:flutter/material.dart';

class CompanyDetail extends StatefulWidget {
  const CompanyDetail({super.key});

  @override
  State<CompanyDetail> createState() => _CompanyDetailState();
}

class _CompanyDetailState extends State<CompanyDetail> {
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
                    Column(
                      children: [
                        TextFormField(
                          onSaved: (String? val) {
                            Global.companyNameController.text = val!;
                          },
                          validator: (val) {
                            if (val!.isEmpty) {
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
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 90,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                Navigator.pushReplacementNamed(
                                    context, 'contact_info');
                                Global.companyName =
                                    Global.companyNameController.text;
                                log(Global.companyName);
                              });
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Next"),
                                Icon(Icons.arrow_forward_ios),
                              ],
                            ),
                          ),
                        ),
                      ],
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
