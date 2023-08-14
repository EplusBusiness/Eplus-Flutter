import 'package:get/get.dart';

import '../../api/repository/api_list_search_repository.dart';
import '../../routes/app_pages.dart';
import 'list_search_state.dart';

class ListSearchController extends GetxController {
  ListSearchController(this.apiListSearchRepository);

  final ApiListSearchRepository apiListSearchRepository;

  var state = const ListSearchState();

  void getListSearch(String name) async {
    final res = await apiListSearchRepository.searchFolder(name);
    if (res != null) {
      onChangedListFolder(res.listFolders);

      update();
    }
  }

  void getAllFolder() async {
    final res = await apiListSearchRepository.getAllCategorys();
    if (res != null) {
      onChangedListFolder(res.listFolders);

      update();
    }
  }

  void onChangedListFolder(List<FolderInfo> data) {
    state = state.copyWith(
        listFolders: data
    );
  }

  void navigatorToDetailFolder(FolderInfo? model) {
    Get.toNamed(Routes.DETAILFOLDER, arguments: [model?.id, '${model?.name}/']);
  }
}