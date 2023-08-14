import 'dart:convert';

class EditItemRequest {
  String? code;
  String? name;
  int? categoryId;
  int? stock;
  String? unit;

  EditItemRequest({
    required this.code,
    required this.name,
    required this.categoryId,
    required this.stock,
    required this.unit,
  });

  String toRawJson() => json.encode(toJson());

  Map<String, dynamic> toJson() => {
    "code": code,
    "name": name,
    "categoryId": categoryId,
    "stock": stock,
    "unit": unit,
  };
}