import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../Global/global.dart';

class AllPosts extends StatefulWidget {
  const AllPosts({super.key});

  @override
  State<AllPosts> createState() => _AllPostsState();
}

class _AllPostsState extends State<AllPosts> {
  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 2,
        leading: IconButton(
          splashRadius: 16,
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.blue,
            size: 18,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //
            Text(
              '${data['category']}',
              style: const TextStyle(
                color: Colors.blue,
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...data['allPost'].map((e) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('detail_page', arguments: e);
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(
                    left: 10,
                    right: 10,
                    bottom: 10,
                    top: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 3,
                      )
                    ],
                  ),
                  height: 300,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Image(
                            image: NetworkImage(
                              e['img'],
                            ),
                          ),
                        ),
                        Stack(
                          children: [
                            Align(
                              alignment: Alignment(0, -1.17),
                              child: Container(
                                alignment: Alignment.center,
                                height: MediaQuery.sizeOf(context).height / 50,
                                width: MediaQuery.sizeOf(context).width / 2,
                                color: Colors.white,
                                child: Text(
                                  Global.companyName,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    letterSpacing: 2,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment(0, 1.15),
                              child: Container(
                                padding: EdgeInsets.only(right: 10, left: 10),
                                height: MediaQuery.sizeOf(context).height / 50,
                                width: MediaQuery.sizeOf(context).width / 2,
                                color: Colors.white,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      Global.userName,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.sizeOf(context).width /
                                          150,
                                    ),
                                    Container(
                                      color: Colors.black,
                                      height:
                                          MediaQuery.sizeOf(context).height /
                                              50,
                                      width: MediaQuery.sizeOf(context).width /
                                          400,
                                    ),
                                    SizedBox(
                                      width:
                                          MediaQuery.sizeOf(context).width / 50,
                                    ),
                                    Text(
                                      Global.companyNumber,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                    ),
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
              );
            }),
          ],
        ),
      ),
    );
  }
}
