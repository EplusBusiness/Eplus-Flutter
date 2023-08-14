import 'package:eplusflutter/src/form_storage/form_storage.dart';
import 'package:get/get.dart';

class FormStorageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FormStorageController>(
            () => FormStorageController(Get.find()));
  }
}
