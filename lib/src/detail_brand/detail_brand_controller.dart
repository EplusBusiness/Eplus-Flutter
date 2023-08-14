import 'package:eplusflutter/api/repository/api_detail_brand_repository.dart';
import 'package:eplusflutter/models/request/base_request.dart';
import 'package:eplusflutter/src/detail_brand/detail_brand_state.dart';
import 'package:get/get.dart';

import '../../models/request/insert_folder_request.dart';
import '../../routes/app_pages.dart';

class DetailBrandController extends GetxController {
  DetailBrandController(this.apiDetailBrandRepository);

  final ApiDetailBrandRepository apiDetailBrandRepository;

  var state = const DetailBrandState();

  int? categoryId = Get.arguments[0];

  void getFolderInfo() async {
    final res = await apiDetailBrandRepository.getAllProjects(categoryId.toString());

    onChangedListFolder(res?.listFolders ?? []);
  }

  void createBrand(InsertFolderRequest data) async {
    final res = await apiDetailBrandRepository.insertProject(data);

    if (res != null) {
      getFolderInfo();
    }
  }

  void removeFolder() async {
    final res = await apiDetailBrandRepository.removeProject(BaseRequest(id: categoryId.toString()));

    if (res != null) {
      getFolderInfo();
    }
  }

  void onChangedListFolder(List<DetailFolderInfo> data) {
    state = state.copyWith(listFolders: data);

    update();
  }

  void navigatorToDetailProject(DetailFolderInfo model) {
    Get.toNamed(Routes.DETAILPROJECT,
        arguments: [model.id.toString(), "${Get.arguments[1]}/${model.name}"]);
  }
}
