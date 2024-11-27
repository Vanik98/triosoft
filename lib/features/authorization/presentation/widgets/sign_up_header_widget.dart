import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:triosoft/generated/locale_keys.g.dart';

class SignUpHeaderWidget extends StatelessWidget {
  const SignUpHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(LocaleKeys.sign_up.tr(), style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Text(LocaleKeys.quick_easy.tr()),
        const SizedBox(height: 10),
        const Divider(height: 0, color: Colors.grey),
        const SizedBox(height: 20),
      ],
    );
  }
}
