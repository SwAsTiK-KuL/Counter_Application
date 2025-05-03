import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_form_event.freezed.dart';

@freezed
class UserFormEvent with _$UserFormEvent {
  const factory UserFormEvent.nameChanged(String name) = NameChanged;
  const factory UserFormEvent.jobChanged(String job) = JobChanged;
  const factory UserFormEvent.submitted() = Submitted;
  const factory UserFormEvent.initialize({required String? name, required String? job}) = Initialize;
}
