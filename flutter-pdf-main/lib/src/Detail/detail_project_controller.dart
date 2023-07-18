import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:makepdfs/models/request/search_folder_request.dart';
import 'package:makepdfs/src/DetailFolder/detail_folder_state.dart';
import '../../api/repository/api_detail_project_repository.dart';
import '../../models/request/update_name_request.dart';

class DetailProjectController extends GetxController {
  DetailProjectController(this.apiDetailProjectRepository);

  final ApiDetailProjectRepository apiDetailProjectRepository;

  var state = const DetailFolderState();

  void getFolderInfo(BuildContext context, String id) async {
    final res = await apiDetailProjectRepository.getProjectInfo(id);
  }

  void postChangeNameProject(BuildContext context) async {
    final UpdateNameRequest request = UpdateNameRequest(name: 'name');
    final res = await apiDetailProjectRepository.updateProject('id', request);

  }

  void navigatorToDetailProject(String id) {

  }
}