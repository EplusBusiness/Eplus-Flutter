import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DenpendencyInjection {
  static Future<void> init() async {
    final instance = await SharedPreferences.getInstance();
    Get.lazyPut<SharedPreferences>(() => instance);
  }
}
