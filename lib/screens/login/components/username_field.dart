import 'package:flutter/material.dart';

class UsernameField extends StatelessWidget {
  const UsernameField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 420,
      child: TextField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.person, size: 20),
          hintText: 'Username',
        ),
      ),
    );
  }
}
