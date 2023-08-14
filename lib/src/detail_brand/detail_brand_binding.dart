import 'package:get/get.dart';
import 'detail_brand.dart';

class DetailBrandBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailBrandController>(
            () => DetailBrandController(Get.find()));
  }
}
