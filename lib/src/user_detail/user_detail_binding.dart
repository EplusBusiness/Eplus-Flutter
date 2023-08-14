import 'package:eplusflutter/src/user_detail/user_detail.dart';
import 'package:get/get.dart';

class UserDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<UserDetailController>(UserDetailController(Get.find()));
  }
}
