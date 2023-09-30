import 'package:eplusflutter/api/repository/api_user_detail_repository.dart';
import 'package:eplusflutter/core/file_util.dart';
import 'package:eplusflutter/core/shared_references.dart';
import 'package:eplusflutter/routes/app_pages.dart';
import 'package:eplusflutter/src/user_detail/user_detail_state.dart';
import 'package:get/get.dart';

class UserDetailController extends GetxController {
  UserDetailController(this.apiStorageRepository);

  final ApiUserDetailRepository apiStorageRepository;

  var state = const UserDetailState();

  Future<void> getUserInfo() async {
    final res = await apiStorageRepository.getUserInfo();

    if (res != null) onChangedUserResponse(res);
  }

  Future<void> updateUser() async {
    final res = await apiStorageRepository.updateUserInfo(state.userInfo!);

    if (res != null) onChangedUserResponse(res);
  }

  Future<void> removeUser() async {
    final res = await apiStorageRepository.getUserInfo();

    if (res != null) {
      SharedPreferencesUtil.resetDataLocal();
      FileUtil.deleteAll();
      Get.offAndToNamed(Routes.LOGIN);
    }
  }

  void uploadImage(FormData form) async {
    final res = await apiStorageRepository.upload(form);

    if (res != null) {
      state = state.copyWith(
        userInfo: state.userInfo?.copyWith(
          avatar_url: res.path
        ),
      );
    }

    update();
  }

  void logOut() {
    Get.offAndToNamed(Routes.LOGIN);
  }

  void onChangedUserResponse(UserInfo userInfo) {
    state = state.copyWith(
      userInfo: userInfo
    );
    update();
  }
}