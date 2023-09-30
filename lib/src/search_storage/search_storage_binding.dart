import 'package:get/get.dart';
import 'search_storage.dart';

class SearchStorageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchStorageController>(
            () => SearchStorageController(Get.find()));
  }
}
