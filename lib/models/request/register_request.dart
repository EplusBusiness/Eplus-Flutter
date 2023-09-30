class RegisterRequest {
  String? email = '';
  String? name = '';
  String? company = '';
  String? phone_number = '+84';
  String? avatar_url = '';
  String? password = '';

  RegisterRequest({
     this.email,
     this.password,
     this.avatar_url,
     this.phone_number,
  });

  Map<String, dynamic> toJson() => {
    "email": email,
    "name": name,
    "company": company,
    "password": password,
    "phone_number": phone_number,
    "avatar_url": avatar_url,
  };
}