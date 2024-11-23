import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField({
    required this.label,
    required this.controller,
    this.obscureText,
    this.error,
    super.key,
  });

  final String label;
  final TextEditingController controller;
  final bool? obscureText;
  final String? error;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          decoration: InputDecoration(
            labelText: label,
            labelStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          style: const TextStyle(fontSize: 18),
          controller: controller,
          obscureText: obscureText ?? false,
          onSaved: (value) {},
        ),
        const SizedBox(
          height: 10,
        ),
        if (error != null)
          Text(
            error!,
            textAlign: TextAlign.start,
            style: const TextStyle(
              color: Colors.red,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          )
      ],
    );
  }
}
