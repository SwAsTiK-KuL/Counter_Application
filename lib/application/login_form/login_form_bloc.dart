import 'package:counter_app/domain/login_form/repository/i_login_form_repository.dart';
import 'package:counter_app/infrastructure/core/storage/token_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_form_event.dart';
import 'login_form_state.dart';

class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
  final ILoginFormRepository iLoginFormRepository;
  final TokenStorage tokenStorage;

  LoginFormBloc({
    required this.iLoginFormRepository,
    required this.tokenStorage,
  }) : super(LoginFormState.initial()) {

    on<EmailChanged>((event, emit) {
      emit(state.copyWith(
        email: event.email,
        isEmailValid: event.email.contains('@'),
      ));
    });

    on<PasswordChanged>((event, emit) {
      emit(state.copyWith(
        password: event.password,
        isPasswordValid: event.password.length >= 6,
      ));
    });

    on<LoginSubmitted>((event, emit) async {
      emit(state.copyWith(
        isSubmitting: true,
        isSubmissionSuccess: false,
        isSubmissionFailure: false,
        errorMessage: '',
      ));

      try {
        final response = await iLoginFormRepository.login(
          email: state.email,
          password: state.password,
        );

        await tokenStorage.saveToken(response);
        // emit(add(TokenStorage(response.token) as LoginFormEvent));


        emit(state.copyWith(
          isSubmitting: false,
          isSubmissionSuccess: true,
          isSubmissionFailure: false,
        ));
      } catch (e) {
        emit(state.copyWith(
          isSubmitting: false,
          isSubmissionSuccess: false,
          isSubmissionFailure: true,
          errorMessage: e.toString(),
        ));
      }
    });

    on<StoreToken>((event, emit) async {
      await tokenStorage.saveToken(event.token);
    });
  }
}
