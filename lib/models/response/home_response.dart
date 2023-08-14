import 'dart:convert';

import '../models/user_model.dart';

class HomeResponse {
  HomeResponse({
    required this.accessToken,
    // required this.user,
  });

  String accessToken;
  // UserModel user;

  factory HomeResponse.fromRawJson(String str) =>
      HomeResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HomeResponse.fromJson(Map<String, dynamic> json) => HomeResponse(
    accessToken: json["accessToken"],
    // user: json["user"],
  );

  Map<String, dynamic> toJson() => {
    "accessToken": accessToken,
    // "user": user,
  };
}
