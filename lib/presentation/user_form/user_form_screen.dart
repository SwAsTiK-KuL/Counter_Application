
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/user_form/user_form_bloc.dart';
import '../../application/user_form/user_form_event.dart';
import '../../application/user_form/user_form_state.dart';
import 'widget/user_form_fields.dart';
import 'widget/user_form_submit_button.dart';

class UserFormScreen extends StatelessWidget {
  final bool isEditing;
  final int? userId;
  final String? initialName;
  final String? initialJob;

  const UserFormScreen({
    super.key,
    this.isEditing = false,
    this.userId,
    this.initialName,
    this.initialJob,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UserFormBloc()..add(UserFormEvent.initialize(
        name: initialName,
        job: initialJob,
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Text(isEditing ? 'Edit User' : 'Create User'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocListener<UserFormBloc, UserFormState>(
            listener: (context, state) {
              if (state.isSuccess == true) {
                Navigator.of(context).pop(true);
              } else if (state.isSuccess == false) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.errorMessage ?? "Error")),
                );
              }
            },
            child: Column(
              children: const [
                UserFormFields(),
                SizedBox(height: 24),
                UserFormSubmitButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
