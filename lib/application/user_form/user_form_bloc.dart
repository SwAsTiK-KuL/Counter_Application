import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_form_event.dart';
import 'user_form_state.dart';

class UserFormBloc extends Bloc<UserFormEvent, UserFormState> {
  UserFormBloc() : super(UserFormState.initial()) {
    on<NameChanged>((event, emit) {
      emit(state.copyWith(
        name: event.name,
        isValid: _validate(event.name, state.job),
        isSuccess: null,
      ));
    });

    on<JobChanged>((event, emit) {
      emit(state.copyWith(
        job: event.job,
        isValid: _validate(state.name, event.job),
        isSuccess: null,
      ));
    });

    on<Initialize>((event, emit) {
      emit(state.copyWith(
        name: event.name ?? '',
        job: event.job ?? '',
        isValid: _validate(event.name ?? '', event.job ?? ''),
        isSuccess: null,
      ));
    });

    on<Submitted>((event, emit) async {
      if (!state.isValid) return;

      emit(state.copyWith(isSubmitting: true, errorMessage: null));

      try {
        // TODO: Call use case (Create or Update)
        await Future.delayed(Duration(seconds: 1));
        emit(state.copyWith(isSubmitting: false, isSuccess: true));
      } catch (e) {
        emit(state.copyWith(isSubmitting: false, isSuccess: false, errorMessage: e.toString()));
      }
    });
  }

  bool _validate(String name, String job) => name.isNotEmpty && job.isNotEmpty;
}
