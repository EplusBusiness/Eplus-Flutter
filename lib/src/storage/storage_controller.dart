import 'package:get/get.dart';
import 'package:eplusflutter/src/Storage/storage_state.dart';
import '../../api/repository/api_storage_repository.dart';
import '../../routes/app_pages.dart';

class StorageController extends GetxController {
  StorageController(this.apiStorageRepository);

  final ApiStorageRepository apiStorageRepository;

  var state = const StorageState();

  Future<void> getAllItems(String id) async {
    final res = await apiStorageRepository.getAllItems(id);

    onChangedData(res!.items);
    update();
  }

  void onChangedData(List<ItemInfo> data) {
    state = state.copyWith(
        listItems: data
    );
  }

  Future<void> navigateToEditItem(String id) async {
    bool value = await Get.toNamed(Routes.EDITITEMS, arguments: [id]);

    if (value) {
      getAllItems(Get.arguments[0]);
    }
  }

  Future<void> navigateToAddItem(String id) async {
    bool value = await Get.toNamed(Routes.ADDITEMS, arguments: [id]);

    if (value) {
      getAllItems(Get.arguments[0]);
    }
  }
}