import 'package:get/get.dart';
import 'package:eplusflutter/src/search/list_search.dart';

class ListSearchBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListSearchController>(
            () => ListSearchController(Get.find()));
  }
}
