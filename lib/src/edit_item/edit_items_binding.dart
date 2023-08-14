import 'package:get/get.dart';
import 'edit_items.dart';

class EditItemsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditItemsController>(
            () => EditItemsController(Get.find()));
  }
}
