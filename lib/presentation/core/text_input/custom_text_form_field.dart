import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final String? errorText;
  final bool obscureText;
  final ValueChanged<String> onChanged;

  const CustomTextFormField({
    super.key,
    required this.labelText,
    this.errorText,
    this.obscureText = false,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        errorText: errorText,
        border: const OutlineInputBorder(),
      ),
      onChanged: onChanged,
    );
  }
}