import 'dart:convert';
import 'package:eplusflutter/models/request/add_item_form_request.dart';

class CreateFormRequest {
  int? id = -1;
  String? nameForm = '';
  String? dateSent = '';
  String? type = 'IN';
  String? status = 'NEW';
  String? sender = '';
  String? addressSender = '';
  String? phoneNumberSender = '';
  String? actorSender = '';

  String? receiver = '';
  String? addressReceiver = '';
  String? phoneNumberReceiver = '';
  String? actorReceiver = '';
  String? cmndReceiver = '';
  int? categoryId = -1;
  List<AddItemFormRequest>? listItem = [];
  List<int>? ids = [];

  CreateFormRequest({
    this.nameForm,
    this.dateSent,
    this.status,
    this.type,
    this.sender,
    this.addressSender,
    this.phoneNumberSender,
    this.actorSender,
    this.receiver,
    this.addressReceiver,
    this.phoneNumberReceiver,
    this.actorReceiver,
    this.cmndReceiver,
    required this.categoryId,
    this.listItem,
    this.ids,
  });

  String toRawJson() => json.encode(toJson());

  Map<String, dynamic> toJson() => {
        "nameForm": nameForm,
        "dateSent": dateSent,
        "status": status,
        "type": type,
        "sender": sender,
        "addressSender": addressSender,
        "phoneNumberSender": phoneNumberSender,
        "actorSender": actorSender,
        "receiver": receiver,
        "addressReceiver": addressReceiver,
        "phoneNumberReceiver": phoneNumberReceiver,
        "actorReceiver": actorReceiver,
        "cmndReceiver": cmndReceiver,
        "categoryId": categoryId,
        "itemFormData": listItem?.map((e) => e.toJson()).toList(),
        "ids": ids,
      };

  bool isNew() {
    return status == 'NEW';
  }

  bool isPending() {
    return status == 'PENDING';
  }
}
