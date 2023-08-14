import 'dart:convert';

import '../../src/detail_brand/detail_brand_state.dart';

class DetailBrandResponse {
  DetailBrandResponse({
    required this.listFolders,
  });

  List<DetailFolderInfo> listFolders;

  factory DetailBrandResponse.fromRawJson(String str) =>
      DetailBrandResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DetailBrandResponse.fromJson(List<dynamic> json) {

    return DetailBrandResponse(
      listFolders: List<DetailFolderInfo>.from(json.map((x) => DetailFolderInfo.fromJson(x))),
    );
  }


  Map<String, dynamic> toJson() => {
    "listFolders": listFolders,
  };
}
