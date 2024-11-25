import 'package:flutter/material.dart';
import 'package:triosoft/core/form/elements/form_element_date_of_birth_widget.dart';
import 'package:triosoft/core/form/elements/form_element_name_widget.dart';
import 'package:triosoft/core/form/elements/form_element_phone_widget.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Expanded(child: SizedBox(height: 100, child: FormElementNameWidget())),
                            SizedBox(width: 10),
                            Expanded(
                              child: SizedBox(
                                height: 100,
                                child: FormElementNameWidget(),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        FormElementNameWidget(),
                        const SizedBox(height: 10),
                        FormElementPhoneWidget(),
                        const SizedBox(height: 10),
                        FormElementDateOfBirthWidget(
                          isImageRequired: false,
                          onDateSelected: (value) {},
                        ),
                        const SizedBox(height: 10),
                        FormElementDateOfBirthWidget(
                          isImageRequired: false,
                          onDateSelected: (value) {},
                        ),
                        const SizedBox(height: 10),
                        FormElementDateOfBirthWidget(
                          isImageRequired: false,
                          onDateSelected: (value) {},
                        ),
                        const SizedBox(height: 10),
                        FormElementDateOfBirthWidget(
                          isImageRequired: false,
                          onDateSelected: (value) {},
                        ),
                        const SizedBox(height: 10),
                        FormElementDateOfBirthWidget(
                          isImageRequired: false,
                          onDateSelected: (value) {},
                        ),
                        const SizedBox(height: 10),
                        FormElementDateOfBirthWidget(
                          isImageRequired: false,
                          onDateSelected: (value) {},
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
