import 'package:flutter/material.dart';
import 'package:triosoft/core/form/elements/form_element_city_widget.dart';
import 'package:triosoft/core/form/elements/form_element_grade_widget.dart';

import '../../../../core/form/elements/form_element_region_widget.dart';
import '../../../../core/form/elements/form_element_email_widget.dart';
import '../../../../core/form/elements/form_element_name_widget.dart';
import '../../../../core/form/elements/form_element_phone_widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
                const Text('Sign Up'),
                const Text('It is quick and easy'),
                const SizedBox(height: 10),
                const Divider(height: 0, color: Colors.grey),
                const SizedBox(height: 20),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Expanded(
                                child: SizedBox(
                                    height: 100,
                                    child: FormElementNameWidget(
                                      labelText: 'Name',
                                    ))),
                            SizedBox(width: 10),
                            Expanded(
                              child: SizedBox(
                                height: 100,
                                child: FormElementNameWidget(
                                  labelText: 'Last Name',
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        FormElementEmailWidget(),
                        const SizedBox(height: 10),
                        FormElementPhoneWidget(),
                        const SizedBox(height: 10),
                        FormElementRegionWidget(values: ['asdas','asdsad'], onDateSelected: (String ) {  },),
                        const SizedBox(height: 10),
                        FormElementCityWidget(values: ['asdas','asdsad'], onDateSelected: (String ) {  },),
                        const SizedBox(height: 10),
                        FormElementGradeWidget(values: ['asdas','asdsad'], onDateSelected: (String ) {  },),
                        const SizedBox(height: 10),
                        FormElementRegionWidget(values: ['asdas','asdsad'], onDateSelected: (String ) {  },),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
                Row(
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
