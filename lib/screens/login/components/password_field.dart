import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    Key? key,
  }) : super(key: key);

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool isObscured = true;

  void _toggleObscure() {
    setState(() {
      isObscured = !isObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 420,
      child: TextField(
        obscureText: isObscured,
        obscuringCharacter: '*',
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.lock_sharp, size: 20),
          suffixIcon: IconButton(
            onPressed: _toggleObscure,
            icon: Icon(isObscured ? Icons.visibility : Icons.visibility_off),
          ),
          hintText: 'Password',
        ),
      ),
    );
  }
}
