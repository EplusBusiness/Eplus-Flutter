import 'dart:convert';

class AttachmentResponse {
  AttachmentResponse({
    this.id,
    this.name,
    this.path,
    this.size,
    this.type,
    this.ext,
  });

  int? id = -1;
  String? name = '';
  String? path = '';
  int? size = 0;
  String? type = '';
  String? ext = '';

  factory AttachmentResponse.fromRawJson(String str) =>
      AttachmentResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AttachmentResponse.fromJson(Map<String, dynamic> json) =>
      AttachmentResponse(
        id: json["id"],
        name: json["name"],
        path: json["path"],
        size: json["size"],
        type: json["type"],
        ext: json["ext"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "path": path,
        "size": size,
        "type": type,
        "ext": ext,
      };
}
