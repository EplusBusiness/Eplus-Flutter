import 'dart:io';

import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import '../../api/api_constants.dart';
import '../../api/interceptors/response_interceptor.dart';
import '../../api/repository/api_detail_folder_repository.dart';
import '../../core/shared_references.dart';
import '../../models/request/insert_folder_request.dart';
import '../../models/request/update_name_request.dart';
import '../../routes/app_pages.dart';
import 'detail_folder_state.dart';
import 'package:http/http.dart' as http;

class DetailFolderController extends GetxController {
  DetailFolderController(this.apiDetailFolderRepository);

  final ApiDetailFolderRepository apiDetailFolderRepository;

  var state = const DetailFolderState();
  int? categoryId = Get.arguments[0];

  void getFolderInfo() async {
    final res =
        await apiDetailFolderRepository.getAllProjects(categoryId.toString());

    onChangedListFolder(res?.listFolders ?? []);
  }

  void generateCsv(String nameCsv) async {
    final res = await apiDetailFolderRepository.getCsv(categoryId.toString());

    getFileFromUrl(res?.url ?? '', nameCsv: nameCsv);
  }

  void createProject(InsertFolderRequest data) async {
    final res = await apiDetailFolderRepository.insertProject(data);

    if (res != null) {
      getFolderInfo();
      onChangedIsEdited(true);
    }
  }

  Future<void> updateNameFolder(String name) async {
    final userId = await SharedPreferencesUtil.getUserId();
    UpdateNameCategoryRequest req = UpdateNameCategoryRequest(
        name: name, parentCategoryId: categoryId, creatorId: int.parse(userId));
    final res = await apiDetailFolderRepository.updateFolder(
        categoryId.toString(), req);

    if (res != null) {
      onChangedIsEdited(true);
    }
    update();
  }

  void removeFolder() async {
    final res =
        await apiDetailFolderRepository.removeFolder(categoryId.toString());

    if (res != null) Get.back(result: true);
  }

  void onChangedIsEdited(bool isEdited) {
    state = state.copyWith(isEdited: isEdited);
  }

  void onChangedListFolder(List<DetailFolderInfo> data) {
    state = state.copyWith(listFolders: data);

    update();
  }

  Future<void> navigatorToDetailProject(DetailFolderInfo model) async {
    bool value = await Get.toNamed(Routes.DETAILBRAND,
        arguments: [model.id, "${Get.arguments[1]}/${model.name}"]);

    if (value) {
      getFolderInfo();
    }
  }

  Future<void> getFileFromUrl(String url, {String? nameCsv}) async {
    String urlCsv = ApiConstants.baseUrlFile + url;
    try {
      var data = await http.get(Uri.parse(urlCsv), headers: {
        "Content-type": "text/csv",
      });
      var bytes = data.bodyBytes;
      var dirDownload = await getApplicationDocumentsDirectory();
      File file = File("${dirDownload.path}/" + (nameCsv ?? '') + ".csv");
      await file.writeAsBytes(bytes);
      handleToastSuccess('Download success!');
    } catch (e) {
      throw Exception("Error opening url file");
    }
  }
}
