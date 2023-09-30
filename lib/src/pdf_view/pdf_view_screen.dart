import 'dart:async';
import 'package:eplusflutter/core/file_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import '../../core/color_constant.dart';
import '../../core/text_app_style.dart';
import '../../widget/text_customize/TextCustomize.dart';

class PdfScreen extends StatefulWidget {
  PdfScreen({Key? key, required this.path}) : super(key: key);

  String? path;

  @override
  State<PdfScreen> createState() => _PdfScreenState();
}

class _PdfScreenState extends State<PdfScreen> {
  String urlPDFPath = "";
  bool exists = true;
  int? currentPage = 0;
  int? pages = 0;
  bool pdfReady = false;
  File? fileDownloaded;
  final Completer<PDFViewController> _controller =
      Completer<PDFViewController>();
  bool loaded = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.path != null) {
      getFileFromUrl(widget.path!).then(
        (value) {
          setState(
            () {
              if (value != null) {
                urlPDFPath = value.path;
                loaded = true;
                exists = true;
              } else {
                exists = false;
              }
            },
          );
        },
      );
    }
  }

  Future<void> deleteFile(File file) async {
    try {
      if (await file.exists()) {
        await file.delete();
      }
    } catch (e) {
      // Error in getting access to the file.
    }
  }

  @override
  Widget build(BuildContext context) {
    if (loaded) {
      return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.navigate_before, color: Colors.black),
            onPressed: () {
              deleteFile(fileDownloaded!);
              Navigator.of(context).pop();
            },
          ),
          backgroundColor: colorYellow,
          title: TextCustomize(
            title: 'Pdf preview',
            textStyle: textStyleApp.semiBold(size: 22, colorText: Colors.black),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  FileUtil.actionPrintingAndShare(fileDownloaded!);
                },
                icon: const Icon(
                  Icons.share,
                  color: Colors.black,
                ))
          ],
        ),
        body: PDFView(
          filePath: urlPDFPath,
          enableSwipe: false,
          swipeHorizontal: true,
          autoSpacing: false,
          pageFling: true,
          pageSnap: true,
          defaultPage: currentPage!,
          fitPolicy: FitPolicy.BOTH,
          preventLinkNavigation: false,
          onError: (error) {},
          onPageError: (page, error) {},
          onViewCreated: (PDFViewController pdfViewController) {
            _controller.complete(pdfViewController);
          },
          onPageChanged: (int? page, int? total) {
            setState(() {
              currentPage = page;
            });
          },
        ),
        floatingActionButton: FutureBuilder<PDFViewController>(
          future: _controller.future,
          builder: (context, AsyncSnapshot<PDFViewController> snapshot) {
            if (snapshot.hasData) {
              return FloatingActionButton.extended(
                backgroundColor: colorYellow,
                label: const Text("Back to first page"),
                onPressed: () async {
                  await snapshot.data!.setPage(pages! ~/ 2);
                },
              );
            }
            return Container();
          },
        ),
      );
    } else {
      if (exists) {
        //Replace with your loading UI
        return Scaffold(
          appBar: AppBar(
            backgroundColor: colorYellow,
            title: const Text("Demo"),
          ),
          body: const Text(
            "Loading..",
            style: TextStyle(fontSize: 20),
          ),
        );
      } else {
        //Replace Error UI
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.redAccent,
            title: const Text("Demo"),
          ),
          body: const Text(
            "PDF Not Available",
            style: TextStyle(fontSize: 20),
          ),
        );
      }
    }
  }

  Future<File> getFileFromUrl(String url, {name}) async {
    var fileName = 'pdf';
    if (name != null) {
      fileName = name;
    }
    try {
      var data =
          await http.get(Uri.parse(url));
      var bytes = data.bodyBytes;
      var dir = await getTemporaryDirectory();
      File file = File("${dir.path}/" + fileName + ".pdf");
      fileDownloaded = file;
      File urlFile = await file.writeAsBytes(bytes);
      return urlFile;
    } catch (e) {
      throw Exception("Error opening url file");
    }
  }
}
