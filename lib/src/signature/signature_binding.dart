import 'package:eplusflutter/src/signature/signature.dart';
import 'package:get/get.dart';

class SignatureBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SignatureController>(SignatureController(Get.find()));
  }
}