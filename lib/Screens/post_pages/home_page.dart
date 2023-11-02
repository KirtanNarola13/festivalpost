import 'dart:ui';

import 'package:flutter/material.dart';

import '../../Global/global.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrPgi73rcbTLzCWk9_LR9aTeW3SNb9WIDcZA&usqp=CAU',
              fit: BoxFit.contain,
              height: 28,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'Hello ${Global.userName}',
              style: const TextStyle(
                color: Colors.blue,
                fontSize: 16,
              ),
            )
          ],
        ),
        actions: [
          Container(
            alignment: Alignment.bottomCenter,
            child: IconButton(
              splashRadius: 18,
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.blue,
                size: 22,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: Global.allPost.map((e) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('all_posts', arguments: e);
            },
            child: Container(
              alignment: Alignment.center,
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(e['thumbnail']),
                ),
              ),
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 3,
                    sigmaY: 3,
                  ),
                  child: Container(
                      alignment: Alignment.center,
                      height: 150,
                      width: 150,
                      child: Text(
                        "${e['category']}",
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
