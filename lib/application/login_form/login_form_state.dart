import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_form_state.freezed.dart';

@freezed
class LoginFormState with _$LoginFormState {
  const factory LoginFormState({
    required String email,
    required String password,
    required bool isEmailValid,
    required bool isPasswordValid,
    required bool isSubmitting,
    required bool isSubmissionSuccess,
    required bool isSubmissionFailure,

    String? errorMessage,
  }) = _LoginFormState;

  factory LoginFormState.initial() => const LoginFormState(
    email: '',
    password: '',
    isEmailValid: false,
    isPasswordValid: false,
    isSubmitting: false,
    isSubmissionSuccess: false,
    isSubmissionFailure: false,
    errorMessage: null,
  );
}

extension LoginFormStateX on LoginFormState {
  bool get isFormValid => isEmailValid && isPasswordValid;
}

