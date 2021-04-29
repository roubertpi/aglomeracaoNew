class LoginResponseModel {
  final String token;
  final String error;

  LoginResponseModel({this.token, this.error});

  static Future<LoginResponseModel> fromJson(decode) {}
}

class LoginRequestModel {
  final String email;
  final String password;
  LoginRequestModel({this.email, this.password});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'email': email.trim(),
      'password': password.trim()
    };
    return map;
  }
}
