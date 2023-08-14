import 'package:get/get.dart';

import 'detail_project.dart';

class DetailProjectBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailProjectController>(
            () => DetailProjectController(Get.find()));
  }
}
