import 'package:eplusflutter/api/repository/api_detail_brand_repository.dart';
import 'package:eplusflutter/core/shared_references.dart';
import 'package:eplusflutter/src/detail_brand/detail_brand_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../models/request/insert_folder_request.dart';
import '../../models/request/update_name_request.dart';
import '../../routes/app_pages.dart';

class DetailBrandController extends GetxController {
  DetailBrandController(this.apiDetailBrandRepository);

  final ApiDetailBrandRepository apiDetailBrandRepository;

  var state = const DetailBrandState();

  int? categoryId = Get.arguments[0];

  void getFolderInfo() async {
    final res =
        await apiDetailBrandRepository.getAllProjects(categoryId.toString());

    onChangedListFolder(res?.listFolders ?? []);
  }

  void createBrand(InsertFolderRequest data) async {
    final res = await apiDetailBrandRepository.insertProject(data);

    if (res != null) {
      getFolderInfo();
      onChangedIsEdited(true);
    }
  }

  void removeProject() async {
    final res =
        await apiDetailBrandRepository.removeProject(categoryId.toString());

    if (res != null) Get.back(result: true);
  }

  Future<void> updateNameFolder(String name) async {
    final userId = await SharedPreferencesUtil.getUserId(); 
    UpdateNameCategoryRequest req = UpdateNameCategoryRequest(name: name, parentCategoryId: categoryId, creatorId: int.parse(userId));
    final res = await apiDetailBrandRepository.updateFolder(
        categoryId.toString(), req);

    if (res != null) {
      onChangedIsEdited(true);
    }
  }

  void onChangedIsEdited(bool isEdited) {
    state = state.copyWith(
        isEdited: isEdited
    );
  }

  void onChangedListFolder(List<DetailFolderInfo> data) {
    state = state.copyWith(listFolders: data);

    update();
  }

  Future<void> navigatorToDetailProject(DetailFolderInfo model) async {
    bool value = await Get.toNamed(Routes.DETAILPROJECT,
        arguments: [model.id.toString(), "${Get.arguments[1]}/${model.name}"]);

    if (value) {
      getFolderInfo();
    }
  }
}
