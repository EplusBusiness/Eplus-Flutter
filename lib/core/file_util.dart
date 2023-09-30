import 'dart:io';
import 'dart:typed_data';

import 'package:path_provider/path_provider.dart';
import 'package:printing/printing.dart';
// import 'dart:html' as html;
class FileUtil {
  static Future<File> writeToFile(ByteData data, String name) async {
    final buffer = data.buffer;
    Directory tempDir = await getTemporaryDirectory();
    String tempPath = tempDir.path;
    Uint8List dataUint8List = buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    var filePath =
        '$tempPath/$name.tmp'; // file_01.tmp is dump file, can be anything
    return File(filePath).writeAsBytes(
        dataUint8List);
  }

  static Future<Uint8List> writeToFileUint8(ByteData data) async {
    final buffer = data.buffer;
    Uint8List dataUint8List = buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);  // file_01.tmp is dump file, can be anything
    return dataUint8List;
  }

  static Future<File> writeFile(ByteData data, String name) async {
    Directory tempDir = await getTemporaryDirectory();
    String tempPath = tempDir.path;
    Uint8List dataUint8List = await writeToFileUint8(data);
    var filePath =
        '$tempPath/$name.tmp';
    return File(filePath).writeAsBytes(dataUint8List);
  }

  static Future<void> actionPrintingAndShare(File data) async {
    final file = File(data.path);
    Uint8List bytes = file.readAsBytesSync();
    await Printing.sharePdf(bytes: bytes);
  }

  static Future<void> deleteAll() async {
    Directory tempDir = await getTemporaryDirectory();
    tempDir.deleteSync(recursive: true);
  }

  static Future<void> launchUrl(String url) async {
    var googleDocsUrl = url;
    final Uri uri = Uri.parse(googleDocsUrl);
    launchUrl(url);
  }

  // static Future<void> downloadFile(String url) async {
  //   html.AnchorElement anchorElement = new html.AnchorElement(href: url);
  //   anchorElement.download = url;
  //   anchorElement.click();
  // }
}
