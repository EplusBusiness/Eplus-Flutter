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
      ..name = state.name
      ..password = state.password
      ..phone_number = replaceCharAt(state.phone_number, 1, '+84');

    final res = await apiRegisterRepository.register(req);
    if (res != null) {
      Get.back();
    }
  }

  // Future<AttachmentAvatar?> uploadFile(FormData form) async {
  //   final res = await apiRegisterRepository.upload(form);
  //
  //   if (res != null) {
  //     onChangedAttachment(avatar: res);
  //   }
  //
  //   update();
  //   return res;
  // }

  String replaceCharAt(String string, int index, String replacement) {
    return string.replaceRange(index, index, replacement);
  }

  void onChangedAttachment({
    String? name,
    String? email,
    String? phoneNumber,
    String? password,
    String? confirmPassword,
  }) {
    state = state.copyWith(
        name: name ?? state.name,
        email: email ?? state.email,
        phone_number: phoneNumber ?? state.phone_number,
        password: password ?? state.password,
        confirmPassword: confirmPassword ?? state.confirmPassword);
  }

  void navigatorToDetailFolder(int? id) {
    Get.toNamed(Routes.DETAILPROJECT, arguments: [id]);
  }
}
