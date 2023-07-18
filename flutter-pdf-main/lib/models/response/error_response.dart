import 'dart:convert';

class ErrorResponse {
  ErrorResponse({
    required this.error,
    required this.message,
  });

  String error;
  String message;

  factory ErrorResponse.fromRawJson(String str) =>
      ErrorResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ErrorResponse.fromJson(Map<String, dynamic> json) => ErrorResponse(
    error: json["error"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "error": error,
  };
}
