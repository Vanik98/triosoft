import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Center(
                child: Text('SignUpPage'),
              ))
        ],
      ),
    );
  }
}
