import 'package:get/get.dart';
import 'create_form_controller.dart';

class CreateFormBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateFormController>(
            () => CreateFormController(Get.find()));
  }
}
