import 'package:get/get.dart';
import '../../api/repository/api_detail_folder_repository.dart';
import '../../models/request/insert_folder_request.dart';
import '../../routes/app_pages.dart';
import 'detail_folder_state.dart';

class DetailFolderController extends GetxController {
  DetailFolderController(this.apiDetailFolderRepository);

  final ApiDetailFolderRepository apiDetailFolderRepository;

  var state = const DetailFolderState();
  int? categoryId = Get.arguments[0];

  void getFolderInfo() async {
    final res = await apiDetailFolderRepository.getAllProjects(categoryId.toString());

    onChangedListFolder(res?.listFolders ?? []);
  }

  void createProject(InsertFolderRequest data) async {
    final res = await apiDetailFolderRepository.insertProject(data);

    if (res != null) {
      getFolderInfo();
    }
  }

  void onChangedListFolder(List<DetailFolderInfo> data) {
    state = state.copyWith(
        listFolders: data
    );

    update();
  }

  void navigatorToDetailProject(DetailFolderInfo model) {
    Get.toNamed(Routes.DETAILBRAND, arguments: [model.id, "${Get.arguments[1]}/${model.name}"]);
  }
}