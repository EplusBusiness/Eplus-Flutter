import 'dart:convert';

import '../../src/form_storage/form_storage_state.dart';

class FormsResponse {
  FormsResponse({
    required this.listForms,
  });

  List<FormInfoData> listForms;

  factory FormsResponse.fromRawJson(String str) =>
      FormsResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FormsResponse.fromJson(List<dynamic> json) {

    return FormsResponse(
      listForms: List<FormInfoData>.from(json.map((x) => FormInfoData.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
    "listFolders": listForms,
  };
}
