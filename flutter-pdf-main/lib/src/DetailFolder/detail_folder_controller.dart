import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:makepdfs/src/DetailFolder/detail_folder_state.dart';
import 'package:makepdfs/src/Form/create_form_state.dart';

import '../../api/repository/api_detail_folder_repository.dart';

class DetailFolderController extends GetxController {
  DetailFolderController(this.apiDetailFolderRepository);

  final ApiDetailFolderRepository apiDetailFolderRepository;

  var state = const DetailFolderState();

  void getFolderInfo(BuildContext context) async {
    final res = await apiDetailFolderRepository.getAllProjects();

  }

  void navigatorToDetailProject(String id) {

  }
}