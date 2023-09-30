import 'package:eplusflutter/api/api.dart';
import 'package:eplusflutter/api/repository/api_create_form_repository.dart';
import 'package:eplusflutter/models/invoice.dart';
import 'package:eplusflutter/models/request/add_item_form_request.dart';
import 'package:eplusflutter/models/request/create_form_request.dart';
import 'package:eplusflutter/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:eplusflutter/src/form/create_form_state.dart';

import '../../core/date_util.dart';
import '../../models/response/attachment_response.dart';

class CreateFormController extends GetxController {
  CreateFormController(this.apiCreateFormRepository);

  final ApiCreateFormRepository apiCreateFormRepository;
  CreateFormRequest req =
      CreateFormRequest(categoryId: int.parse(Get.arguments[0]));

  var state = const CreateFormState();
  List<String> listOptions = [
    "Đã qua sử dụng (Có hộp)",
    "Đã qua sử dụng (Không hộp)",
    "Nguyên hộp đã khui",
    "Nguyên hộp chưa khui",
    "Khác"
  ];

  void getItems() async {
    final res = await apiCreateFormRepository.getAllItems(Get.arguments[0]);

    if (res != null) {
      state = state.copyWith(listItems: res.items);
    }
  }

  Future<void> uploadFile(FormData form, AttachmentInfo attachmentInfo) async {
    final res = await apiCreateFormRepository.upload(form);
    int index = state.listCmnd.indexOf(attachmentInfo);

    if (res != null) {
      onChangedImages(res, index: index);
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
    req.dateSent = state.dateSending;
    req.nameForm = state.nameForm;
    var idsCmnd = state.listCmnd.map((e) => e.id ?? -1).toList();
    req.ids = idsCmnd.where((element) => element != -1).toList();
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
    List<AddItemFormRequest> listItems = listProducts.map((e) {
      if (e.indexOptionSelected == 4) {
        return AddItemFormRequest(
            itemId: e.itemInfo?.id?.toInt(),
            note: e.noteWithOptions,
            amount: int.parse(e.stock ?? '0'));
      }
      return AddItemFormRequest(
          itemId: e.itemInfo?.id?.toInt(),
          note: e.note,
          amount: int.parse(e.stock ?? '0'));
    }).toList();

    req.listItem = listItems;
  }

  void transferDataToNextScreen(BuildContext context) {
    if (state.nameForm.isEmpty) {
      handleToast('Cần thêm tên form!');
      return;
    }

    if (state.dateSending.isEmpty) {
      handleToast('Cần thêm ngày giao!');
      return;
    }

    if (state.senderInfo.name == '' || state.senderInfo.name == null) {
      handleToast('Cần thêm tên công ty!');
      return;
    }

    if (state.senderInfo.address == '' || state.senderInfo.address == null) {
      handleToast('Cần thêm địa chỉ công ty!');
      return;
    }

    if (state.senderInfo.phone == '' || state.senderInfo.phone == null) {
      handleToast('Cần thêm số điện thoại!');
      return;
    }

    if (state.senderInfo.actor == '' || state.senderInfo.actor == null) {
      handleToast('Cần thêm người đại diện!');
      return;
    }

    if (state.receiverInfo.name == '' || state.receiverInfo.name == null) {
      handleToast('Cần thêm tên công ty người nhận!');
      return;
    }

    if (state.receiverInfo.address == '' ||
        state.receiverInfo.address == null) {
      handleToast('Cần thêm địa chỉ công ty người nhận!');
      return;
    }

    if (state.receiverInfo.phone == '' || state.receiverInfo.phone == null) {
      handleToast('Cần thêm số điện thoại người nhận!');
      return;
    }

    if (state.receiverInfo.actor == '' || state.receiverInfo.actor == null) {
      handleToast('Cần thêm tên người đại diện!');
      return;
    }

    if (state.listProduct.isEmpty) {
      handleToast('Cần thêm sản phẩm!');
      return;
    }

    changeReqToInvoice(context);
  }

  void changeReqToInvoice(BuildContext context) {
    fillData();
    onChangedToListItems();
    // Process line for pdf
    List<ProductInfo> listProducts = state.listProduct.toList();
    List<LineItem> listLine = listProducts.map((e) {
      if (e.indexOptionSelected == 4) {
        return LineItem(e.itemInfo?.name ?? '', int.parse(e.stock ?? '0'),
            e.itemInfo?.unit ?? '', e.noteWithOptions.toString());
      }
      return LineItem(e.itemInfo?.name ?? '', int.parse(e.stock ?? '0'),
          e.itemInfo?.unit ?? '', e.note.toString());
    }).toList();
    Invoice invoice = Invoice(
        dateSent: req.dateSent ?? '',
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

  void nextSignatureScreen(BuildContext context, Invoice invoice) {
    Get.toNamed(Routes.SIGNATURE, arguments: [req, invoice, state.isNew]);
  }

  void onChangedIsNew({bool? isNew}) {
    state = state.copyWith(isNew: isNew ?? state.isNew);
  }

  void onChangedDatePicked(DateTime datePicked) {
    String dateStringPicked = DateUtil.getStringDate(datePicked);

    state = state.copyWith(dateSending: dateStringPicked);

    update();
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
    int? indexOption,
    String? noteWithOption,
  }) {
    var items = state.listProduct.toList();
    items[index] = items[index].copyWith(
      itemInfo: item ?? state.listProduct[index].itemInfo,
      stock: stock ?? state.listProduct[index].stock,
      note: note ?? state.listProduct[index].note,
      indexOptionSelected:
          indexOption ?? state.listProduct[index].indexOptionSelected,
      noteWithOptions:
          noteWithOption ?? state.listProduct[index].noteWithOptions,
    );

    state = state.copyWith(listProduct: items);
    update();
  }

  void onChangedImages(AttachmentResponse data, {int index = 0}) {
    AttachmentInfo attach = AttachmentInfo(
        path: data.path, nameFile: data.name, id: data.id, ext: data.type);

    List<AttachmentInfo> listCmndOld = state.listCmnd.toList();
    listCmndOld[index] = attach;

    onChangeListImages(listCmndOld);
  }

  void onChangeListImages(List<AttachmentInfo> images) {
    state = state.copyWith(listCmnd: images);
    update();
  }

  void onChangeRemoveImages(AttachmentInfo image) {
    List<AttachmentInfo> listOld = state.listCmnd.toList();
    int index = listOld.indexOf(image);
    listOld.removeAt(index);
    listOld.add(const AttachmentInfo());
    onChangeListImages(listOld);
  }
}
