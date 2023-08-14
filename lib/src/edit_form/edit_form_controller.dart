import 'package:eplusflutter/api/api.dart';
import 'package:eplusflutter/models/invoice.dart';
import 'package:eplusflutter/models/request/add_item_form_request.dart';
import 'package:eplusflutter/models/request/create_form_request.dart';
import 'package:eplusflutter/routes/app_pages.dart';
import 'package:eplusflutter/src/edit_form/edit_form_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../api/repository/api_edit_form_repository.dart';
import '../../models/response/attachment_response.dart';

class EditFormController extends GetxController {
  EditFormController(this.apiEditFormRepository);

  final ApiEditFormRepository apiEditFormRepository;
  CreateFormRequest req =
      CreateFormRequest(categoryId: int.parse(Get.arguments[0]));

  var state = const EditFormState();

  void getFormInfo() async {
    final res = await apiEditFormRepository.getForm(Get.arguments[1]);

    if (res != null) {
      onChangeDataFormExist(res);
    }
  }

  void getItems() async {
    final res = await apiEditFormRepository.getAllItems(Get.arguments[0]);

    if (res != null) {
      state = state.copyWith(listItems: res.items);
    }
    update();
  }

  bool checkExistItem(ItemInfo? item) {
    var listItemsExist = state.listProduct.map((e) => e.itemInfo);
    var index = listItemsExist.firstWhere((element) => element == item,
        orElse: () => null);
    if (index == null) {
      return false;
    }
    return true;
  }

  void fillData() {
    req.type = state.typeForm;
    req.nameForm = state.nameForm;
    onChangedSenderToReq();
    onChangedReceiverToReq();
  }

  void onChangedSenderToReq() {
    req
      ..sender = state.senderInfo.name ?? ''
      ..addressSender = state.senderInfo.address ?? ''
      ..phoneNumberSender = state.senderInfo.phone ?? ''
      ..actorSender = state.senderInfo.actor ?? '';
  }

  void onChangedReceiverToReq() {
    req
      ..receiver = state.receiverInfo.name ?? ''
      ..addressReceiver = state.receiverInfo.address ?? ''
      ..phoneNumberReceiver = state.receiverInfo.phone ?? ''
      ..actorReceiver = state.receiverInfo.actor ?? ''
      ..cmndReceiver = state.receiverInfo.cmnd ?? '';
  }

  void onChangedToListItems() {
    List<ProductInfo> listProducts = state.listProduct.toList();
    List<AddItemFormRequest> listItems = listProducts
        .map((e) => AddItemFormRequest(
            itemId: e.itemInfo?.id?.toInt(),
            note: e.note,
            amount: int.parse(e.stock ?? '0')))
        .toList();

    req.listItem = listItems;
  }

  void changeReqToInvoice(BuildContext context) {
    if (state.listProduct.isEmpty) {
      handleToast('List item is empty!');
      return;
    }
    fillData();
    onChangedToListItems();
    // Process line for pdf
    List<ProductInfo> listProducts = state.listProduct.toList();
    List<LineItem> listLine = listProducts
        .map((e) => LineItem(e.itemInfo?.name ?? '', int.parse(e.stock ?? '0'),
            e.itemInfo?.unit ?? '', e.note.toString()))
        .toList();
    Invoice invoice = Invoice(
        sender: req.sender ?? '',
        addressSender: req.addressSender ?? '',
        phoneNumberSender: req.phoneNumberSender ?? '',
        actorSender: req.actorSender ?? '',
        receiver: req.receiver ?? '',
        addressReceiver: req.addressReceiver ?? '',
        phoneNumberReceiver: req.phoneNumberReceiver ?? '',
        actorReceiver: req.actorReceiver ?? '',
        cmndReceiver: req.cmndReceiver ?? '',
        items: listLine);

    nextSignatureScreen(context, invoice);
  }

  List<AttachmentResponse>? getListAttachment() {
    List<AttachmentResponse>? listAttachs = state.formData.attachments
        ?.map((e) => AttachmentResponse(id: e.id, name: e.name, path: e.path, type: e.type))
        .toList();
    return listAttachs;
  }

  void nextSignatureScreen(BuildContext context, Invoice invoice) {
    Get.toNamed(Routes.SIGNATURE,
        arguments: [req, invoice, state.isNew, getListAttachment()]);
  }

  void onChangedIsNew({bool? isNew}) {
    state = state.copyWith(isNew: isNew ?? state.isNew);
  }

  void onChangedSenderData({
    String? name,
    String? phone,
    String? address,
    String? actor,
  }) {
    state = state.copyWith(
      senderInfo: state.senderInfo.copyWith(
        name: name ?? state.senderInfo.name,
        phone: phone ?? state.senderInfo.phone,
        address: address ?? state.senderInfo.address,
        actor: actor ?? state.senderInfo.actor,
      ),
    );

    update();
  }

  void onChangedReceiverData({
    String? name,
    String? phone,
    String? address,
    String? actor,
    String? cmnd,
  }) {
    state = state.copyWith(
      receiverInfo: state.receiverInfo.copyWith(
        name: name ?? state.receiverInfo.name,
        phone: phone ?? state.receiverInfo.phone,
        address: address ?? state.receiverInfo.address,
        actor: actor ?? state.receiverInfo.actor,
        cmnd: cmnd ?? state.receiverInfo.cmnd,
      ),
    );

    update();
  }

  void onChangeProperties({
    String? type,
    String? nameForm,
  }) {
    state = state.copyWith(
      typeForm: type ?? state.typeForm,
      nameForm: nameForm ?? state.nameForm,
    );
    update();
  }

  addItems({required ProductInfo productInfo, int index = 0}) {
    final listOld = <ProductInfo>[];
    listOld.addAll(state.listProduct);
    listOld.insert(index, productInfo);
    state = state.copyWith(
      listProduct: listOld,
    );
    update();
  }

  removeItems({
    required int index,
  }) {
    final listProduct = state.listProduct.toList();
    listProduct.removeAt(index);
    state = state.copyWith(
      listProduct: listProduct,
    );
    update();
  }

  updateItems({
    required int index,
    ItemInfo? item,
    String? stock,
    String? note,
  }) {
    var items = state.listProduct.toList();
    items[index] = items[index].copyWith(
      itemInfo: item ?? state.listProduct[index].itemInfo,
      stock: stock ?? state.listProduct[index].stock,
      note: note ?? state.listProduct[index].note,
    );

    state = state.copyWith(listProduct: items);
    update();
  }

  void onChangeDataFormExist(FormInfoData data) {
    state = state.copyWith(
      formData: data,
      senderInfo: state.senderInfo.copyWith(
        name: data.sender,
        address: data.addressSender,
        phone: data.addressSender,
        actor: data.actorSender,
      ),
      receiverInfo: state.receiverInfo.copyWith(
        name: data.receiver,
        address: data.addressReceiver,
        phone: data.phoneNumberReceiver,
        actor: data.actorReceiver,
        cmnd: data.cmndReceiver,
      ),
      nameForm: data.nameForm ?? '',
      typeForm: data.type ?? '',
      isNew: false,
    );
    req.status = data.status;
    req.id = data.id;
    onChangeListProduct(data.items!);
    onChangeListCmnd(data.attachments!);
    update();
  }

  void onChangeListCmnd(List<Attachment> listImages) {
    List<Attachment> cmndImages = listImages.where((e) => e.type == 'CMND').toList();
    if (cmndImages.isNotEmpty) {
      state = state.copyWith(
          attachmentsCmnd: cmndImages
      );
    }
  }

  void onChangeListProduct(List<FormItem> items) {
    List<ProductInfo> products = items.map((e) {
      List<ItemInfo> itemEqual =
          state.listItems.where((element) => element.id == e.item?.id).toList();
      return ProductInfo(
          itemInfo: itemEqual.first, note: e.note, stock: e.amount.toString());
    }).toList();
    state = state.copyWith(listProduct: products);
  }
}
