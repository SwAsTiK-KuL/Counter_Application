
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../application/user_form/user_form_bloc.dart';
import '../../../application/user_form/user_form_event.dart';
import '../../../application/user_form/user_form_state.dart';

class UserFormSubmitButton extends StatelessWidget {
  const UserFormSubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserFormBloc, UserFormState>(
      builder: (context, state) {
        return ElevatedButton(
          onPressed: state.isValid && !state.isSubmitting
              ? () => context.read<UserFormBloc>().add(const UserFormEvent.submitted())
              : null,
          child: state.isSubmitting
              ? const CircularProgressIndicator(color: Colors.white)
              : const Text('Submit'),
        );
      },
    );
  }
}
