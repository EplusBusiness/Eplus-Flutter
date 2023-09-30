import 'package:eplusflutter/api/api.dart';
import 'package:eplusflutter/api/repository/api_register_repository.dart';
import 'package:eplusflutter/models/request/register_request.dart';
import 'package:eplusflutter/src/register/register_state.dart';
import 'package:get/get.dart';
import '../../routes/app_pages.dart';

class RegisterController extends GetxController {
  RegisterController(this.apiRegisterRepository);

  final ApiRegisterRepository apiRegisterRepository;

  var state = const RegisterState();

  void registerAccount() async {
    RegisterRequest req = RegisterRequest();
    req
      ..email = state.email
      ..company = state.company.toLowerCase()
      ..name = state.name
      ..password = state.password
      ..phone_number = state.phone_number;

    final res = await apiRegisterRepository.register(req);
    if (res != null) {
      handleToastSuccess('register success!');

      await Future.delayed(const Duration(seconds: 2));
      try {
        Get.back();
      }catch (err) {
        handleToast(err.toString());
      }
    }
  }

  String replaceCharAt(String string, int index, String replacement) {
    return string.replaceRange(0, index, replacement);
  }

  void onChangedAttachment({
    String? name,
    String? company,
    String? email,
    String? phoneNumber,
    String? password,
    String? confirmPassword,
  }) {
    state = state.copyWith(
        name: name ?? state.name,
        company: company ?? state.company,
        email: email ?? state.email,
        phone_number: phoneNumber ?? state.phone_number,
        password: password ?? state.password,
        confirmPassword: confirmPassword ?? state.confirmPassword);
  }

  void navigatorToDetailFolder(int? id) {
    Get.toNamed(Routes.DETAILPROJECT, arguments: [id]);
  }
}
