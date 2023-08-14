import 'dart:convert';

class RegisterResponse {
  RegisterResponse({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.email,
    required this.name,
    required this.phone_number,
    required this.avatar_url,
  });

  int id;
  String createdAt;
  String updatedAt;
  String email;
  String name;
  String phone_number;
  String avatar_url;

  factory RegisterResponse.fromRawJson(String str) =>
      RegisterResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      RegisterResponse(
        id: json["id"],
        createdAt: json["createdAt"],
        updatedAt: json["updatedAt"],
        email: json["email"],
        name: json["name"],
        phone_number: json["phone_number"],
        avatar_url: json["avatar_url"],
      );

  Map<String, dynamic> toJson() => {
    "id": id,
    "createdAt": createdAt,
    "updatedAt": updatedAt,
    "email": email,
    "name": name,
    "phone_number": phone_number,
    "avatar_url": avatar_url,
  };
}
