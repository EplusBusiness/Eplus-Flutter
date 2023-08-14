import 'package:get/get.dart';
import '../../core/shared_references.dart';
import '../../routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onReady() async {
    super.onReady();
    await Future.delayed(const Duration(milliseconds: 2000));
    var token = await SharedPreferencesUtil.getToken();
    try {
      if (token.isNotEmpty) {
        Get.toNamed(Routes.HOME);
      } else {
        Get.toNamed(Routes.LOGIN);
      }
    } catch (e) {
      Get.toNamed(Routes.LOGIN);
    }
  }
}
