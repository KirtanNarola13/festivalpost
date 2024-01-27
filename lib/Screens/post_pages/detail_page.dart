import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

import '../../Global/global.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  GlobalKey repaintboudry = GlobalKey();

  void downloadImg() async {
    RenderRepaintBoundary res = await repaintboudry.currentContext!
        .findRenderObject() as RenderRepaintBoundary;

    var image = await res.toImage(pixelRatio: 5);

    ByteData? byte = await image.toByteData(format: ImageByteFormat.png);

    Uint8List ulist = await byte!.buffer.asUint8List();

    // Save the image to the device's gallery
    await ImageGallerySaver.saveImage(ulist);
  }

  void shareImg() async {
    RenderRepaintBoundary res = await repaintboudry.currentContext!
        .findRenderObject() as RenderRepaintBoundary;

    var image = await res.toImage(pixelRatio: 5);

    ByteData? byte = await image.toByteData(format: ImageByteFormat.png);

    Uint8List ulist = await byte!.buffer.asUint8List();

    // Save the image temporarily for sharing
    File tempFile =
        File('${(await getTemporaryDirectory()).path}/temp_image.png');
    await tempFile.writeAsBytes(ulist);

    // Get the content:// URI of the temporary file
    XFile xFile = XFile(tempFile.path);
    log(tempFile.toString());
    // Share the image with other apps using content:// URI
    Share.shareXFiles(
      [xFile],
    );

    // Optionally, you can delete the temporary file after sharing
    // tempFile.delete();
  }

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
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.blue,
            size: 18,
          ),
        ),
        title: const Text(
          "Detail Page",
          style: TextStyle(color: Colors.blue),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: RepaintBoundary(
              key: repaintboudry,
              child: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  bottom: 10,
                  top: 20,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 3,
                    )
                  ],
                ),
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Image(
                          image: NetworkImage(
                            data['img'],
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          Align(
                            alignment: const Alignment(0, -1.13),
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
                            alignment: const Alignment(0, 1.13),
                            child: Container(
                              padding:
                                  const EdgeInsets.only(right: 10, left: 10),
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
                                    width:
                                        MediaQuery.sizeOf(context).width / 150,
                                  ),
                                  Container(
                                    color: Colors.black,
                                    height:
                                        MediaQuery.sizeOf(context).height / 50,
                                    width:
                                        MediaQuery.sizeOf(context).width / 400,
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
            ),
          ),
          Expanded(
            flex: 5,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 30,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    downloadImg();
                  },
                  icon: const Icon(
                    Icons.download,
                    color: Colors.white,
                  ),
                  label: const Text("Download"),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    shareImg();
                  },
                  icon: const Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                  label: const Text("Share"),
                ),
                const SizedBox(
                  width: 30,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
