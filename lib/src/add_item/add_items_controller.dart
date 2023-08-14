import 'package:eplusflutter/api/repository/api_add_item_repository.dart';
import 'package:eplusflutter/models/response/attachment_response.dart';
import 'package:get/get.dart';
import '../../models/request/add_item_request.dart';
import '../../routes/app_pages.dart';
import 'add_items_state.dart';
import 'package:flutter/material.dart';

class AddItemsController extends GetxController {
  AddItemsController(this.addItemRepository);

  final ApiAddItemRepository addItemRepository;

  var state = const AddItemstState();

  void onChangedItemData({
    String? code,
    String? name,
    int? categoryId,
    String? stock,
    String? unit,
  }) {
    state = state.copyWith(
      itemInfo: state.itemInfo.copyWith(
        code: code ?? state.itemInfo.code,
        name: name ?? state.itemInfo.name,
        categoryId: categoryId ?? state.itemInfo.categoryId,
        stock: stock ?? state.itemInfo.stock,
        unit: unit ?? state.itemInfo.unit,
      ),
    );

    update();
  }

  void onChangeAttachment(AttachmentResponse data) {
    AttachmentInfo attach =
        AttachmentInfo(path: data.path, nameFile: data.name, id: data.id);

    state = state.copyWith(attachment: attach);
  }

  // void onChangePathNameImage(String name) {
  //   state = state.copyWith(
  //       nameFile: name
  //   );
  // }

  void createItem() async {
    // print(int.parse(state.itemInfo.stock ?? '0'));
    final AddItemRequest req = AddItemRequest(
        code: state.itemInfo.code ?? '0000',
        name: state.itemInfo.name,
        categoryId: int.parse(Get.arguments[0]),
        stock: int.parse(state.itemInfo.stock ?? '0'),
        unit: state.itemInfo.unit,
        attachmentId: state.attachment.id
    );

    final res = await addItemRepository.createItem(req);

    if (res != null) {
      Get.back(result: true);
    }
  }

  void uploadImage(FormData form) async {
    final res = await addItemRepository.upload(form);

    if (res != null) {
      onChangeAttachment(res);
    }

    update();
  }

  void navigatorToAddForm(int id) {
    Get.toNamed(Routes.CREATEFORM, arguments: [id]);
  }
}
