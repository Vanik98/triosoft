import 'package:flutter/material.dart';

class SignUpHeaderWidget extends StatelessWidget {
  const SignUpHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Sign Up'),
        Text('It is quick and easy'),
        SizedBox(height: 10),
        Divider(height: 0, color: Colors.grey),
        SizedBox(height: 20),
      ],
    );
  }
}
