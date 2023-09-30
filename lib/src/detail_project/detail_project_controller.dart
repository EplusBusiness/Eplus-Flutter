import 'package:eplusflutter/core/date_util.dart';
import 'package:eplusflutter/models/request/base_request.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../api/repository/api_detail_project_repository.dart';
import '../../models/request/update_name_request.dart';
import '../../routes/app_pages.dart';
import 'detail_project_state.dart';

class DetailProjectController extends GetxController {
  DetailProjectController(this.apiDetailProjectRepository);

  final ApiDetailProjectRepository apiDetailProjectRepository;

  var state = const DetailProjectState();

  void getFolderInfo(String id) async {
    final res = await apiDetailProjectRepository.getProjectInfo(id);

    if (res != null) {
      onChangedProject(res);
      updateDate(res.createdAt ?? '', res.updatedAt ?? '');
    }
  }

  void onChangedProject(FolderInfo? data) {
    state = state.copyWith(folder: data ?? const FolderInfo());
  }

  void updateDate(String created, String updated) {
    final createdD = DateUtil.getDateTime(created);
    final updatedD = DateUtil.getDateTime(updated);

    onChangeDate(createdD, updatedD);
  }

  void updateNameProject(UpdateNameCategoryRequest data) async {
    final res = await apiDetailProjectRepository.updateProject(
        state.folder.id.toString(), data);

    if (res != null) {
      onChangedIsEdited(true);
    }
    update();
  }

  Future<void> deleteProject() async {
    final res = await apiDetailProjectRepository
        .removeProject(state.folder.id.toString());

    if (res != null) Get.back(result: true);
  }

  void onChangedIsEdited(bool isEdited) {
    state = state.copyWith(
        isEdited: isEdited
    );
  }

  void onChangeName(String name) {
    final folder = UpdateNameCategoryRequest(
        name: name,
        creatorId: state.folder.creatorId,
        parentCategoryId: state.folder.parentCategoryId);

    updateNameProject(folder);
  }

  void onChangeDate(String created, String updated) {
    state = state.copyWith(createdDate: created, updatedDate: updated);
    update();
  }

  void navigatorToStorage(String id) {
    Get.toNamed(Routes.STORAGE, arguments: [id]);
  }

  void navigatorToFormsStorage(String id) {
    Get.toNamed(Routes.FORMSTORAGE, arguments: [id]);
  }

  void navigatorToAddForm(String id) {
    Get.toNamed(Routes.CREATEFORM, arguments: [id, true]);
  }
}
