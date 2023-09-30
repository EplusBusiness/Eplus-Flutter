import 'package:eplusflutter/src/storage/storage.dart';
import 'package:get/get.dart';

class StorageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<StorageController>(StorageController(Get.find()));
  }
}
