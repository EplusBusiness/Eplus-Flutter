import 'package:get/get.dart';

import 'detail_folder.dart';

class DetailFolderBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailFolderController>(
            () => DetailFolderController(Get.find()));
  }
}
