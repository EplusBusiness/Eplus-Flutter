class RegisterRequest {
  String? email;
  String? phone_number;
  String? avatar_url;
  String? password;

  RegisterRequest({
    required this.email,
    required this.password,
    required this.avatar_url,
    required this.phone_number,
  });

  Map<String, dynamic> toJson() => {
    "email": email,
    "password": password,
    "phone_number": password,
    "avatar_url": password,
  };
}