
import 'package:eplusflutter/api/repository/api_pdfpreview_repository.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../models/response/attachment_response.dart';

class PdfPreviewController extends GetxController {
  PdfPreviewController(this.apiPdfPreviewRepository);

  final ApiPdfPreviewRepository apiPdfPreviewRepository;

  void uploadFile(FormData form) async {
    final res = await apiPdfPreviewRepository.upload(form);

    Get.back(result: res?.id);
  }
}