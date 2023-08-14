import 'package:eplusflutter/src/pdf_preview/pdfpreview.dart';
import 'package:get/get.dart';

class PdfPreviewBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PdfPreviewController>(
            () => PdfPreviewController(Get.find()));
  }
}
