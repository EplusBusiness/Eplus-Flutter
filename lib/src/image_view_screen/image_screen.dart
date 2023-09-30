import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:eplusflutter/api/api.dart';
import 'package:eplusflutter/core/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import '../../core/text_app_style.dart';
import '../../widget/text_customize/TextCustomize.dart';

class ImageViewScreen extends StatefulWidget {
  ImageViewScreen({Key? key, required this.images});

  List<String?> images;

  @override
  State<ImageViewScreen> createState() => _ImageViewScreenState();
}

class _ImageViewScreenState extends State<ImageViewScreen> {
  late PageController _pageController;
  int activePage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorYellow,
        title: TextCustomize(
          title: 'Image preview',
          textStyle: textStyleApp.semiBold(size: 22, colorText: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {
                downloadImage(widget.images[activePage] ?? '');
              },
              icon: const Icon(Icons.download))
        ],
      ),
      body: PageView.builder(
        itemCount: widget.images.length,
        pageSnapping: true,
        controller: _pageController,
        onPageChanged: (page) {
          setState(() {
            activePage = page;
          });
        },
        itemBuilder: (context, pagePosition) {
          return Container(
            margin: const EdgeInsets.all(10),
            child: Image.network(widget.images[pagePosition] ?? ''),
          );
        },
      ),
    );
  }

  Future<void> downloadImage(String urlFile) async {
    var appDocDir = await getTemporaryDirectory();
    String savePath = appDocDir.path + "/.jpg";
    await Dio().download(urlFile, savePath);
    File file = File(savePath);
    Uint8List data = file.readAsBytesSync();
    final result =
        await ImageGallerySaver.saveImage(data, isReturnImagePathOfIOS: true);

    if (result != null) {
      handleToastSuccess("Image saved!");
    }
  }
}
