import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:triosoft/core/form/elements/form_element_city_widget.dart';
import 'package:triosoft/core/form/elements/form_element_grade_widget.dart';
import 'package:triosoft/features/authorization/presentation/bloc/sign_up_bloc/sign_up_bloc.dart';
import 'package:triosoft/features/authorization/presentation/bloc/sign_up_bloc/sign_up_event.dart';

import '../../../../core/form/elements/form_element_email_widget.dart';
import '../../../../core/form/elements/form_element_name_widget.dart';
import '../../../../core/form/elements/form_element_password_widget.dart';
import '../../../../core/form/elements/form_element_phone_widget.dart';
import '../../../../core/form/elements/form_element_region_widget.dart';

class SignUpPageFormElementsWidget extends StatelessWidget {
  const SignUpPageFormElementsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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

  Widget get _emailWidget => _getWidgetWithBottomPadding(BlocSelector<SignUpBloc, SignUpState, String?>(
        selector: (state) {
          return state.email;
        },
        builder: (context, email) {
          return FormElementEmailWidget(
            initialValue: email,
            onTextChanged: (value) {
              context.read<SignUpBloc>().add(SignUpEvent.changeEmail(value));
            },
          );
        },
      ));

  Widget get _phoneNumberWidget => _getWidgetWithBottomPadding(BlocSelector<SignUpBloc, SignUpState, String?>(
        selector: (state) {
          return state.email;
        },
        builder: (context, email) {
          return FormElementPhoneWidget();
        },
      ));

  Widget get _regionWidget => _getWidgetWithBottomPadding(BlocSelector<SignUpBloc, SignUpState, String?>(
        selector: (state) {
          return state.email;
        },
        builder: (context, state) {
          return FormElementRegionWidget(
            values: ['asdas', 'asdsad'],
            onDateSelected: (String) {},
          );
        },
      ));

  Widget get _cityWidget => _getWidgetWithBottomPadding(BlocSelector<SignUpBloc, SignUpState, String?>(
        selector: (state) {
          return state.email;
        },
        builder: (context, state) {
          return FormElementCityWidget(
            values: ['asdas', 'asdsad'],
            onDateSelected: (String) {},
          );
        },
      ));

  Widget get _gradeWidget => _getWidgetWithBottomPadding(BlocSelector<SignUpBloc, SignUpState, String?>(
        selector: (state) {
          return state.email;
        },
        builder: (context, state) {
          return FormElementGradeWidget(
            values: ['asdas', 'asdsad'],
            onDateSelected: (String) {},
          );
        },
      ));

  Widget get _subjectWidget => _getWidgetWithBottomPadding(BlocSelector<SignUpBloc, SignUpState, String?>(
        selector: (state) {
          return state.email;
        },
        builder: (context, state) {
          return FormElementRegionWidget(
            values: ['asdas', 'asdsad'],
            onDateSelected: (String) {},
          );
        },
      ));

  Widget get _passwordWidget => _getWidgetWithBottomPadding(BlocSelector<SignUpBloc, SignUpState, String?>(
        selector: (state) {
          return state.email;
        },
        builder: (context, state) {
          return FormElementPasswordWidget();
        },
      ));

  Widget get _confirmWidget => _getWidgetWithBottomPadding(BlocSelector<SignUpBloc, SignUpState, String?>(
        selector: (state) {
          return state.email;
        },
        builder: (context, state) {
          return FormElementPasswordWidget();
        },
      ));
}
