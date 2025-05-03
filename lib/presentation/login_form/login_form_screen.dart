import 'package:flutter/material.dart';
import '../../presentation/login_form/widget/email_field.dart';
import '../../presentation/login_form/widget/password_field.dart';
import '../../presentation/login_form/widget/login_button.dart';

class LoginFormScreen extends StatelessWidget {
  const LoginFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: const _LoginForm(),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        SizedBox(height: 20),
        EmailField(),
        SizedBox(height: 16),
        PasswordField(),
        SizedBox(height: 24),
        LoginButton(),
      ],
    );
  }
}
