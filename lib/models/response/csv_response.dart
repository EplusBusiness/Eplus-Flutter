import 'dart:convert';

class CsvResponse {
  CsvResponse({
    this.url,
  });

  String? url;

  factory CsvResponse.fromRawJson(String str) =>
      CsvResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CsvResponse.fromJson(Map<String, dynamic> json) => CsvResponse(
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "url": url,
  };
}
