import 'dart:convert';

import '../models/user_model.dart';

class LoginResponse {
  LoginResponse({
    required this.access_token,
    required this.user,
  });

  String access_token;
  UserModel user;

  factory LoginResponse.fromRawJson(String str) =>
      LoginResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
    access_token: json["access_token"],
    user: UserModel.fromJson(json['user']),
  );

  Map<String, dynamic> toJson() => {
    "access_token": access_token,
    "user": user,
  };
}
