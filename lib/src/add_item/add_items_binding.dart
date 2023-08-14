import 'package:get/get.dart';

import 'add_items.dart';


class AddItemstBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddItemsController>(
            () => AddItemsController(Get.find()));
  }
}
