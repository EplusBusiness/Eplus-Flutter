import 'package:get/get.dart';
import '../../models/request/register_request.dart';
import '../base_provider.dart';

class ApiRegisterProvider extends BaseProvider {

  Future<Response> registerAccount(String path, RegisterRequest req) {
    return post(path, req.toJson());
  }

  Future<Response> upload(String path, FormData data) {
    return post(path, data);
  }
}
