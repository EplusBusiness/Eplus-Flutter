import 'dart:convert';

class FormResponse {
  FormResponse({
    this.id,
  });

  int? id = -1;

  factory FormResponse.fromRawJson(String str) =>
      FormResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FormResponse.fromJson(Map<String, dynamic> json) => FormResponse(
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
  };
}
