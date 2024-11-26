import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:triosoft/core/base/extensions/widget_extensions.dart';
import 'package:triosoft/core/form/elements/form_element_city_widget.dart';
import 'package:triosoft/core/form/elements/form_element_grade_widget.dart';
import 'package:triosoft/features/authorization/presentation/bloc/login/login_bloc.dart';
import 'package:triosoft/features/authorization/presentation/bloc/sign_up_bloc/sign_up_bloc.dart';
import 'package:triosoft/features/authorization/presentation/bloc/sign_up_bloc/sign_up_event.dart';

import '../../../../core/form/elements/form_element_email_widget.dart';
import '../../../../core/form/elements/form_element_name_widget.dart';
import '../../../../core/form/elements/form_element_password_widget.dart';
import '../../../../core/form/elements/form_element_phone_widget.dart';
import '../../../../core/form/elements/form_element_region_widget.dart';
import '../../../../di/dependency_injection.dart';
import '../../../language/presentation/widgets/language_widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(
            locator.get(),
            locator.get(),
          ),
        ),
        BlocProvider(
          create: (context) => SignUpBloc(),
        ),
      ],
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () => {context.openSalonDefaultBottomSheetDialog(const LanguageWidget())},
              ),
            ],
          ),
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
                          _nameLastNameWidget,
                          _emailWidget,
                          _phoneNumberWidget,
                          _regionWidget,
                          _cityWidget,
                          _gradeWidget,
                          _subjectWidget,
                          _passwordWidget,
                          _confirmWidget,
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
      ),
    );
  }

  Widget _getWidgetWithBottomPadding(Widget widget) {
    return Padding(padding: const EdgeInsets.only(bottom: 10), child: widget);
  }

  Widget get _nameLastNameWidget => _getWidgetWithBottomPadding(Row(
        children: [
          Expanded(
              child: SizedBox(
                  height: 100,
                  child: BlocSelector<SignUpBloc, SignUpState, String?>(
                    selector: (state) {
                      return state.name;
                    },
                    builder: (context, name) {
                      return FormElementNameWidget(
                        onTextChanged: (value) {
                          context.read<SignUpBloc>().add(SignUpEvent.changeName(value));
                        },
                        initialValue: name,
                        labelText: 'Name',
                      );
                    },
                  ))),
          const SizedBox(width: 10),
          Expanded(
            child: SizedBox(
              height: 100,
              child: BlocSelector<SignUpBloc, SignUpState, String?>(
                selector: (state) {
                  return state.lastName;
                },
                builder: (context, lastName) {
                  return FormElementNameWidget(
                    initialValue: lastName,
                    onTextChanged: (value) {
                      context.read<SignUpBloc>().add(SignUpEvent.changeLastName(value));
                    },
                    labelText: 'Last Name',
                  );
                },
              ),
            ),
          )
        ],
      ));

  Widget get _emailWidget => _getWidgetWithBottomPadding(FormElementEmailWidget());

  Widget get _phoneNumberWidget => _getWidgetWithBottomPadding(FormElementPhoneWidget());

  Widget get _regionWidget => _getWidgetWithBottomPadding(FormElementRegionWidget(
        values: ['asdas', 'asdsad'],
        onDateSelected: (String) {},
      ));

  Widget get _cityWidget => _getWidgetWithBottomPadding(FormElementCityWidget(
        values: ['asdas', 'asdsad'],
        onDateSelected: (String) {},
      ));

  Widget get _gradeWidget => _getWidgetWithBottomPadding(FormElementGradeWidget(
        values: ['asdas', 'asdsad'],
        onDateSelected: (String) {},
      ));

  Widget get _subjectWidget => _getWidgetWithBottomPadding(FormElementRegionWidget(
        values: ['asdas', 'asdsad'],
        onDateSelected: (String) {},
      ));

  Widget get _passwordWidget => _getWidgetWithBottomPadding(FormElementPasswordWidget());

  Widget get _confirmWidget => _getWidgetWithBottomPadding(FormElementPasswordWidget());
}
