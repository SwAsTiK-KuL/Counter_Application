import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../application/login_form/login_form_bloc.dart';
import '../../../application/login_form/login_form_event.dart';
import '../../../application/login_form/login_form_state.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginFormBloc, LoginFormState>(
      buildWhen: (previous, current) =>
      previous.password != current.password ||
          previous.isPasswordValid != current.isPasswordValid,
      builder: (context, state) {
        return TextFormField(
          initialValue: state.password,
          obscureText: _obscureText,
          decoration: InputDecoration(
            labelText: 'Password',
            hintText: 'Enter your password',
            errorText: state.isPasswordValid || state.password.isEmpty
                ? null
                : 'Password must be 8+ chars, include upper, lower & number',
            border: const OutlineInputBorder(),
            suffixIcon: IconButton(
              icon: Icon(
                _obscureText ? Icons.visibility_off : Icons.visibility,
              ),
              onPressed: _toggleVisibility,
            ),
          ),
          onChanged: (value) {
            context
                .read<LoginFormBloc>()
                .add(LoginFormEvent.passwordChanged(value));
          },
        );
      },
    );
  }
}
