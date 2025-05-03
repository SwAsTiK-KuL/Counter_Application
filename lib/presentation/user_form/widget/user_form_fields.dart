
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../application/user_form/user_form_bloc.dart';
import '../../../application/user_form/user_form_event.dart';
import '../../../application/user_form/user_form_state.dart';

class UserFormFields extends StatelessWidget {
  const UserFormFields({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserFormBloc, UserFormState>(
      builder: (context, state) {
        return Column(
          children: [
            TextFormField(
              initialValue: state.name,
              decoration: const InputDecoration(labelText: 'Name'),
              onChanged: (value) => context.read<UserFormBloc>().add(UserFormEvent.nameChanged(value)),
            ),
            const SizedBox(height: 12),
            TextFormField(
              initialValue: state.job,
              decoration: const InputDecoration(labelText: 'Job'),
              onChanged: (value) => context.read<UserFormBloc>().add(UserFormEvent.jobChanged(value)),
            ),
          ],
        );
      },
    );
  }
}
