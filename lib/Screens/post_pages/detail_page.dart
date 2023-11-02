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

    // Share the image with other apps
    Share.share(
      tempFile.path,
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
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.blue,
            size: 18,
          ),
        ),
        title: Text(
          "Detail Page",
          style: TextStyle(color: Colors.blue),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 10,
            child: RepaintBoundary(
              key: repaintboudry,
              child: Container(
                margin:
                    EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("${data['img']}"),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      color: Colors.grey.shade700.withOpacity(0.8),
                      child: Text(
                        Global.companyName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 10, left: 10),
                      height: 30,
                      color: Colors.grey.shade700.withOpacity(0.8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.phone_android_rounded,
                                color: Colors.white,
                                size: 18,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                Global.companyNumber,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              const Icon(
                                Icons.email_outlined,
                                color: Colors.white,
                                size: 18,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                Global.companyEmail,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
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
                SizedBox(
                  width: 30,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    downloadImg();
                  },
                  icon: Icon(
                    Icons.download,
                    color: Colors.white,
                  ),
                  label: Text("Download"),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    shareImg();
                  },
                  icon: Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                  label: Text("Share"),
                ),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
