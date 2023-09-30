import 'dart:convert';
import '../../src/search_storage/search_storage.dart';

class FormsSearchResponse {
  FormsSearchResponse({
    required this.listForms,
  });

  List<FormInfoData> listForms;

  factory FormsSearchResponse.fromRawJson(String str) =>
      FormsSearchResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FormsSearchResponse.fromJson(List<dynamic> json) {

    return FormsSearchResponse(
      listForms: List<FormInfoData>.from(json.map((x) => FormInfoData.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
    "listFolders": listForms,
  };
}
