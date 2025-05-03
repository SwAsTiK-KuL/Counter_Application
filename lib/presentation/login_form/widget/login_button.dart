import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../application/login_form/login_form_bloc.dart';
import '../../../application/login_form/login_form_event.dart';
import '../../../application/login_form/login_form_state.dart';
import '../../counter/counter_screen.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginFormBloc, LoginFormState>(
      listener: (context, state) {
        if (state.isSubmissionSuccess) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const CounterScreen()),
          );

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.errorMessage ?? 'Login Failed')),
          );

        } else if (state.isSubmissionFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.errorMessage ?? 'Login Failed')),
          );
        }
      },
      builder: (context, state) {
        return ElevatedButton(
          onPressed: state.isSubmitting
              ? null
              : () {
            context.read<LoginFormBloc>().add(const LoginSubmitted());
          },
          child: state.isSubmitting
              ? const CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          )
              : const Text('Login'),
        );
      },
    );
  }
}
