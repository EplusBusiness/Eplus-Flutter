import 'package:get/get.dart';
import 'edit_form_controller.dart';

class EditFormBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditFormController>(
            () => EditFormController(Get.find()));
  }
}
