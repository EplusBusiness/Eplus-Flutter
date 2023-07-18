import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:makepdfs/api/api.dart';
import 'package:makepdfs/src/Form/create_form_state.dart';

class CreateFormController extends GetxController {
  CreateFormController(this.apiAuthRepository);

  final ApiAuthRepository apiAuthRepository;

  var state = const CreateFormState();

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
        actor: phone ?? state.senderInfo.phone,
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
      senderInfo: state.senderInfo.copyWith(
        name: name ?? state.senderInfo.name,
        phone: phone ?? state.senderInfo.phone,
        address: address ?? state.senderInfo.address,
        actor: phone ?? state.senderInfo.phone,
      ),
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
    final listOld = <ProductInfo>[];
    listOld.addAll(state.listProduct);
    listOld.removeAt(index);
    state = state.copyWith(
      listProduct: listOld,
    );
    update();
  }

  updateItems({
    required int index,
    String? name,
    String? cost,
    String? size,
    String? note,
  }) {
    var listOld = <ProductInfo>[];

    listOld.addAll(state.listProduct);

    listOld = listOld.map((e) {
      if (listOld.indexOf(e) == index) {
        debugPrint(e.toString());

        return e.copyWith(
          name: name ?? e.name,
          cost: cost ?? e.cost,
          size: size ?? e.size,
          note: note ?? e.note,
        );
      }
      return e;
    }).toList();

    state = state.copyWith(listProduct: listOld);
    update();
  }
}
