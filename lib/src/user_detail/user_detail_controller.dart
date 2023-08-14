import 'package:eplusflutter/api/repository/api_user_detai_repository.dart';
import 'package:eplusflutter/src/user_detail/user_detail_state.dart';
import 'package:get/get.dart';

class UserDetailController extends GetxController {
  UserDetailController(this.apiStorageRepository);

  final ApiUserDetailRepository apiStorageRepository;

  var state = const UserDetailState();
}