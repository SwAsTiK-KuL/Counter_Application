import '../../../domain/login_form/entity/login_response_entity.dart';

class LoginResponseDTO {
  static LoginResponseEntity fromJson(Map<String, dynamic> json) {
    return LoginResponseEntity.fromJson(json);
  }
}
