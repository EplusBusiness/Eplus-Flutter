import 'package:get/get.dart';
import '../../src/user_detail/user_detail_state.dart';
import '../base_provider.dart';

class ApiUserDetailProvider extends BaseProvider {
  Future<Response> getUserInfo(String path) {
    return get(path);
  }

  Future<Response> updateUserInfo(String path, UserInfo data) {
    return post(path, data.toJson());
  }

  Future<Response> removeUser(String path) {
    return delete(path);
  }

  Future<Response> upload(String path, FormData data) {
    return post(path, data);
  }
}