import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  const AuthField({
    super.key,
    required this.hintText,
    this.obscureText = false,
    required this.icon,
    required this.controller,
  });

  final String hintText;
  final bool obscureText;
  final IconData icon;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(icon),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "$hintText is missing!";
        }

        return null;
      },
    );
  }
}
