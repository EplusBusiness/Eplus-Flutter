import 'dart:convert';

class AddItemRequest {
  String? code = '';
  String? name;
  int? categoryId;
  int? stock;
  String? unit;
  int? attachmentId;

  AddItemRequest({
    required this.code,
    required this.name,
    required this.categoryId,
    required this.stock,
    required this.unit,
    required this.attachmentId,
  });

  String toRawJson() => json.encode(toJson());

  Map<String, dynamic> toJson() => {
    "code": code,
    "name": name,
    "categoryId": categoryId,
    "stock": stock,
    "unit": unit,
    "attachmentId": attachmentId,
  };
}