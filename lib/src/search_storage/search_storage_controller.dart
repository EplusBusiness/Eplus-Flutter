import 'package:eplusflutter/src/search_storage/search_storage.dart';
import 'package:get/get.dart';
import '../../api/repository/api_search_storage_repository.dart';
import '../../routes/app_pages.dart';

class SearchStorageController extends GetxController {
  SearchStorageController(this.apiSearchStorageRepository);

  final ApiSearchStorageRepository apiSearchStorageRepository;

  var state = const SearchStorageState();

  Future<void> getStorageForms(String id) async {
    final res = await apiSearchStorageRepository.getAllForms(id);

    onChangedState(formsData: res!.listForms);
  }

  Future<void> getStorageItems(String id) async {
    final res = await apiSearchStorageRepository.getAllItems(id);

    onChangedState(listItems: res!.items);
  }

  Future<void> getData(String text) async {
    if (state.isForm) {
      List<FormInfoData> formsData = state.formsData.toList();
      formsData.where((e) {
        String nameForm = e.nameForm ?? '';
        return nameForm.contains(text);
      }).toList();

      onChangedState(listSearchForms: formsData, isSearched: true);
    }else {
      List<ItemInfo> itemsData = state.listItems.toList();
      itemsData.where((e) {
        String name = e.name ?? '';
        return name.contains(text);
      }).toList();

      onChangedState(listSearchItems: itemsData, isSearched: true);
    } 
  }

  // On change state
  void getStateSearch() {
    bool isForm = Get.arguments[0];
    String id = Get.arguments[1];
    onChangedState(isForm: isForm);

    isForm ? getStorageForms(id) : getStorageItems(id);
  }

  void onChangedState({
    bool? isForm,
    bool? isSearched,
    List<ItemInfo>? listItems,
    List<FormInfoData>? formsData,
    List<ItemInfo>? listSearchItems,
    List<FormInfoData>? listSearchForms,
  }) {
    state = state.copyWith(
      isForm: isForm ?? state.isForm,
      isSearched: isSearched?? state.isSearched,
      listItems: listItems ?? state.listItems,
      formsData: formsData ?? state.formsData,
      listSearch: listSearchItems ?? state.listSearch,
      formsSearch: listSearchForms ?? state.formsSearch,
    );

    update();
  }

  // Navigator
  Future<void> navigateToEditItem(String id) async {
    bool value = await Get.toNamed(Routes.EDITITEMS, arguments: [id]);

    if (value) {
      getStorageItems(Get.arguments[1]);
    }
  }

  Future<void> navigateToEditForm(String id) async {
    Get.toNamed(Routes.EDITFORM, arguments: [Get.arguments[1], id]);
  }
}
