import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecoverPasswordPage extends StatelessWidget {
  const RecoverPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Center(
                child: Text('RecoverPasswordPage'),
              ))
        ],
      ),
    );
  }
}
