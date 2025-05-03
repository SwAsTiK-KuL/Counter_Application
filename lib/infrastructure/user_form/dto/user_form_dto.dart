
import '../../../domain/user_form/entity/user_form_entity.dart';

class UserFormDto {
  final String name;
  final String job;

  UserFormDto({required this.name, required this.job});

  factory UserFormDto.fromJson(Map<String, dynamic> json) {
    return UserFormDto(
      name: json['name'],
      job: json['job'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'job': job,
    };
  }

  UserFormEntity toDomain() => UserFormEntity(name: name, job: job);

  static UserFormDto fromDomain(UserFormEntity entity) {
    return UserFormDto(name: entity.name, job: entity.job);
  }
}
