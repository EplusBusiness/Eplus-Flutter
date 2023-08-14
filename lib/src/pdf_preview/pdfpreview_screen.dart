import 'dart:typed_data';
import 'package:eplusflutter/core/text_app_style.dart';
import 'package:eplusflutter/src/pdf_preview/pdfpreview.dart';
import 'package:eplusflutter/widget/text_customize/TextCustomize.dart';
import 'package:flutter/material.dart';
import 'package:eplusflutter/models/invoice.dart';
import 'package:get/get.dart';
import 'package:printing/printing.dart';
import '../../pages/pdfexport/pdf/pdfexport.dart';

class PdfPreviewScreen extends StatefulWidget {
  @override
  State<PdfPreviewScreen> createState() => _PdfPreviewScreenState();
}

class _PdfPreviewScreenState extends State<PdfPreviewScreen> {
  final Invoice invoice = Get.arguments[0];

  final Uint8List imageSenderData = Get.arguments[1];

  final Uint8List imageReceiverData = Get.arguments[2];

  final bool isPreview = Get.arguments[3];

  PdfPreviewController controller = PdfPreviewController(Get.find());

  @override
  void dispose() {
    // TODO: implement dispose
    Get.delete<PdfPreviewController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TextCustomize(
            title: 'Pdf preview',
            textStyle: textStyleApp.semiBold(size: 22, colorText: Colors.white),
          ),
          actions: [
            isPreview ? Container() : IconButton(onPressed: () {
              FormData form = FormData({
                'file': MultipartFile(filePdf,
                    filename: filePdf?.absolute.toString() ?? '', contentType: 'application/pdf'),
              });
              controller.uploadFile(form);
            }, icon: const Icon(Icons.done))
          ],
        ),
        body: PdfPreview(
          dynamicLayout: false,
          build: (context) =>
              makePdf(invoice, imageSenderData, imageReceiverData, isPreview),
        )
    );
  }
}
