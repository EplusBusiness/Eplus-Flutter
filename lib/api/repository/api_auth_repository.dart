import 'dart:async';
import '../../models/request/login_request.dart';
import '../../models/request/register_request.dart';
import '../../models/response/login_response.dart';
import '../../models/response/register_response.dart';
import '../api.dart';

class ApiAuthRepository {
  ApiAuthRepository({required this.apiProvider});

  final ApiAuthProvider apiProvider;

  Future<LoginResponse?> login(LoginRequest data) async {
      final res = await apiProvider.login(ApiConstants.login, data);

      if (res.statusCode == 200) {
        return LoginResponse.fromJson(res.body);
      }
  }

  Future<RegisterResponse?> register(RegisterRequest data) async {
    final res = await apiProvider.register(ApiConstants.register, data);
    if (res.statusCode == 200) {
      return RegisterResponse.fromJson(res.body);
    }
  }

// Future<UsersResponse?> getUsers() async {
//   final res = await apiProvider.getUsers('/api/users?page=1&per_page=12');
//   if (res.statusCode == 200) {
//     return UsersResponse.fromJson(res.body);
//   }
// }
}
