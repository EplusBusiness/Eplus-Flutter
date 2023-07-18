import 'package:get/get.dart';
import 'package:makepdfs/api/api.dart';
import 'package:makepdfs/api/provider/api_detail_folder_provider.dart';
import 'package:makepdfs/api/provider/api_detail_project_provider.dart';
import 'package:makepdfs/api/repository/api_detail_folder_repository.dart';
import 'package:makepdfs/api/repository/api_detail_project_repository.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() async {
    Get.put(ApiAuthProvider(), permanent: true);
    Get.put(ApiAuthRepository(apiProvider: Get.find()), permanent: true);

    Get.put(ApiHomeProvider(), permanent: true);
    Get.put(ApiHomeRepository(apiProvider: Get.find()), permanent: true);

    Get.put(ApiDetailFolderProvider(), permanent: true);
    Get.put(ApiDetailFolderRepository(apiProvider: Get.find()), permanent: true);

    Get.put(ApiDetailProjectProvider(), permanent: true);
    Get.put(ApiDetailProjectRepository(apiProvider: Get.find()), permanent: true);
  }
}
