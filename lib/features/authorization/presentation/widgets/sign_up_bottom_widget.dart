import 'package:flutter/material.dart';

class SignUpBottomWidget extends StatelessWidget {
  const SignUpBottomWidget({super.key, required this.formKey});

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Registration as a Donor',
          style: TextStyle(
            color: Colors.green, // Set the text color to green
            decoration: TextDecoration.underline, // Underline the text
          ),
        ),
        FilledButton(
            style: ButtonStyle(
              shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))), // Rounded corners
              backgroundColor: WidgetStateProperty.all(Colors.green),
            ),
            onPressed: () {
              final isValid = formKey.currentState?.validate();
            },
            child: Text('Ok')),
      ],
    );
  }
}
