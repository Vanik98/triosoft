import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Center(
            child: Column(
              children: [
                Text('Hello My Friend'),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
