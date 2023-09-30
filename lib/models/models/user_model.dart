import 'dart:convert';

class UserModel {
  UserModel({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.name,
    this.company,
    this.email,
    this.phone_number,
    this.avatar_url,
  });

  int? id = 0;
  String? createdAt = '';
  String? updatedAt = '';
  String? name = '';
  String? email = '';
  String? company = '';
  String? phone_number = '';
  String? avatar_url = '';

  factory UserModel.fromRawJson(String str) =>
      UserModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json['id'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        email: json['email'],
        company: json['company'],
        phone_number: json['phone_number'],
        avatar_url: json['avatar_url'],
        name: json['name'],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "createdAt": createdAt,
        "updatedAt": updatedAt,
        "email": email,
        "company": company,
        "phone_number": phone_number,
        "avatar_url": avatar_url,
        "name": name,
      };
}
