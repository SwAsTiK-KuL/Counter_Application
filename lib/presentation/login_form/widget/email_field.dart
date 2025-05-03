import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../application/login_form/login_form_bloc.dart';
import '../../../application/login_form/login_form_event.dart';
import '../../../application/login_form/login_form_state.dart';
import '../../core/text_input/custom_text_form_field.dart';


class EmailField extends StatelessWidget {
  const EmailField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginFormBloc, LoginFormState>(
      builder: (context, state) {
        return CustomTextFormField(
          labelText: 'Email',
          errorText: state.isEmailValid || state.email.isEmpty ? null : 'Invalid email',
          onChanged: (value) => context.read<LoginFormBloc>().add(EmailChanged(value)),
        );
      },
    );
  }
}