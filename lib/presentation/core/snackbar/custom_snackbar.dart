import 'package:flutter/material.dart';

void showLoginSnackbar(BuildContext context, String email, String password) {
  final snackBar = SnackBar(
    content: Text('Email: $email\nPassword: $password'),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
