import 'package:eplusflutter/api/repository/api_edit_item_repository.dart';
import 'package:eplusflutter/models/request/edit_item_request.dart';
import 'package:get/get.dart';
import 'edit_items_state.dart';


class EditItemsController extends GetxController {
  EditItemsController(this.editItemRepository);

  final ApiEditItemRepository editItemRepository;

  var state = const AddItemstState();

  void getItemInfo(String id) async {
    final res = await editItemRepository.getItemInfo(id);

    if (res != null) {
      state = state.copyWith(
        item: res
      );
    }

    update();
  }

  void onChangedItemData({
    String? code,
    String? name,
    int? categoryId,
    int? stock,
    String? unit,
  }) {
    state = state.copyWith(
      item: state.item.copyWith(
        code: code ?? state.item.code,
        name: name ?? state.item.name,
        categoryId: categoryId ?? state.item.categoryId,
        stock: stock ?? state.item.stock,
        unit: unit ?? state.item.unit,
      ),
    );

    update();
  }

  void onChangePathImage(AttachmentInfo data) {
    state = state.copyWith(
      attachment: data
    );
  }

  void uploadImage(FormData form, String path) async {
    final res = await editItemRepository.upload(form);

    if (res != null) {
      // AttachmentInfo data = AttachmentInfo(
      //
      // );
      // onChangePathImage(res);
    }

    update();
  }

  void editItem() async {
    EditItemRequest req = EditItemRequest(
        code: state.item.code,
        name: state.item.name,
        categoryId: state.item.categoryId,
        stock: state.item.stock,
        unit: state.item.unit,
    );
    final res = await editItemRepository.editItemInfo(state.item.id.toString(), req);

    if (res != null) {
      Get.back(result: true);
    }
  }

  void deleteItem() async {
    final res = await editItemRepository.deleteItemInfo(state.item.id.toString());

    if (res != null) {
      Get.back(result: true);
    }
  }
}