import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_form_state.freezed.dart';

@freezed
class UserFormState with _$UserFormState {
  const factory UserFormState({
    required String name,
    required String job,
    required bool isSubmitting,
    required bool isValid,
    String? errorMessage,
    bool? isSuccess,
  }) = _UserFormState;

  factory UserFormState.initial() => const UserFormState(
    name: '',
    job: '',
    isSubmitting: false,
    isValid: false,
    errorMessage: null,
    isSuccess: null,
  );
}
