import 'package:eplusflutter/api/repository/api_form_storage_repository.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';
import 'form_storage_state.dart';

class FormStorageController extends GetxController {
  FormStorageController(this.apiFormStorageRepository);
  final ApiFormStorageRepository apiFormStorageRepository;

  var state = const FormStorageState();

  Future<void> getAllForms() async {
    final res = await apiFormStorageRepository.getAllForms(Get.arguments[0]);

    onChangedListForms(res?.listForms ?? []);
  }

  void onChangedListForms(List<FormInfoData> forms) {
    state = state.copyWith(
      formsData: forms
    );
    onChangedFilterToType();
  }

  void onChangedFilterToType() {
    state = state.copyWith(
      formsInData: state.formsData.where((element) => element.type == "IN").toList(),
      formsOutData: state.formsData.where((element) => element.type == "OUT").toList(),
    );
    update();
  }

  Future<void> navigateToEditItem(String id) async {
    bool value = await Get.toNamed(Routes.EDITFORM, arguments: [Get.arguments[0], id]);

    if (value) {
      // getAllItems(Get.arguments[0]);
    }
  }

  Future<void> navigateToSearch() async {
    bool value = await Get.toNamed(Routes.SEARCHSTORAGE, arguments: [true, Get.arguments[0]]);

    if (value) {
      // getAllItems(Get.arguments[0]);
    }
  }

  void onChangedSegment(bool isIn) {
    state = state.copyWith(
      isIn: isIn
    );

    update();
  }
}