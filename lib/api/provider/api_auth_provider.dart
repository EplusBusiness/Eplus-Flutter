import 'package:get/get.dart';
import '../../models/request/login_request.dart';
import '../../models/request/register_request.dart';
import '../base_provider.dart';

class ApiAuthProvider extends BaseProvider {
  Future<Response> login(String path, LoginRequest data) {
    return post(path, data.toJson());
  }

  Future<Response> register(String path, RegisterRequest data) {
    return post(path, data.toJson());
  }
}
