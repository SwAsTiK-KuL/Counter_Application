class LoginResponseEntity {
  final String token;

  LoginResponseEntity({required this.token});

  factory LoginResponseEntity.fromJson(Map<String, dynamic> json) {
    return LoginResponseEntity(token: json['token']);
  }
}
