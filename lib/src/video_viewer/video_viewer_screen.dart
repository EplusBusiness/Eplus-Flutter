import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:video_player/video_player.dart';

import '../../api/interceptors/response_interceptor.dart';
import '../../core/color_constant.dart';
import '../../core/text_app_style.dart';
import '../../widget/text_customize/TextCustomize.dart';

/// Stateful widget to fetch and then display video content.
class VideoApp extends StatefulWidget {
  const VideoApp({super.key, this.urlVideo});

  final String? urlVideo;

  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    if (widget.urlVideo != '') {
      _controller =
          VideoPlayerController.networkUrl(Uri.parse(widget.urlVideo ?? ''))
            ..initialize().then((_) {
              // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
              setState(() {});
            });
    } else {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.navigate_before, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: colorYellow,
        title: TextCustomize(
          title: 'Video preview',
          textStyle: textStyleApp.semiBold(size: 22, colorText: Colors.black),
        ),
        actions: [
          Visibility(
            visible: widget.urlVideo != '',
            child: IconButton(
                onPressed: () {
                  downloadImage(widget.urlVideo ?? '');
                },
                icon: const Icon(Icons.download)),
          )
        ],
      ),
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : Container(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            },
          );
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  Future<void> downloadImage(String urlFile) async {
    var appDocDir = await getTemporaryDirectory();
    String savePath = appDocDir.path + "/video.mov";
    await Dio().download(
      urlFile,
      savePath,
      onReceiveProgress: (actualBytes, totalBytes) {
        final percentage = actualBytes / totalBytes * 100;
        print(percentage);
      },
    );
    await GallerySaver.saveVideo(savePath).then((value) {
      if (value == true) handleToastSuccess("Image saved!");
    });
  }
}
