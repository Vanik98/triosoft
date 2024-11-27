import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:triosoft/core/form/elements/form_element_city_widget.dart';
import 'package:triosoft/core/form/elements/form_element_grade_widget.dart';
import 'package:triosoft/core/form/elements/form_element_school_widget.dart';
import 'package:triosoft/core/form/elements/form_element_subject_widget.dart';
import 'package:triosoft/features/authorization/domain/entites/school_enum.dart';
import 'package:triosoft/features/authorization/domain/entites/subject_enum.dart';
import 'package:triosoft/features/authorization/presentation/bloc/sign_up_bloc/sign_up_bloc.dart';
import 'package:triosoft/features/authorization/presentation/bloc/sign_up_bloc/sign_up_event.dart';
import 'package:triosoft/generated/locale_keys.g.dart';

import '../../../../core/form/elements/form_element_email_widget.dart';
import '../../../../core/form/elements/form_element_name_widget.dart';
import '../../../../core/form/elements/form_element_password_widget.dart';
import '../../../../core/form/elements/form_element_phone_widget.dart';
import '../../../../core/form/elements/form_element_region_widget.dart';
import '../../domain/entites/city_enum.dart';
import '../../domain/entites/grade_enum.dart';
import '../../domain/entites/region_enum.dart';

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
        _schoolWidget,
        _gradeWidget,
        // _subjectWidget,
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
                        labelText: LocaleKeys.name.tr(),
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
                    labelText: LocaleKeys.last_name.tr(),
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
          return state.phoneNumber;
        },
        builder: (context, email) {
          return FormElementPhoneWidget(
            onTextChanged: (value) {
              context.read<SignUpBloc>().add(SignUpEvent.changePhoneNumber(value));
            },
          );
        },
      ));

  Widget get _regionWidget => _getWidgetWithBottomPadding(BlocSelector<SignUpBloc, SignUpState, String?>(
        selector: (state) {
          return state.region;
        },
        builder: (context, region) {
          return FormElementRegionWidget(
            values: regionNames,
            onDateSelected: (value) {
              context.read<SignUpBloc>().add(SignUpEvent.changeRegion(value));
            },
          );
        },
      ));

  Widget get _cityWidget => _getWidgetWithBottomPadding(BlocSelector<SignUpBloc, SignUpState, String?>(
        selector: (state) {
          return state.city;
        },
        builder: (context, city) {
          return FormElementCityWidget(
            values: cityNames,
            onDateSelected: (value) {
              context.read<SignUpBloc>().add(SignUpEvent.changeCity(value));
            },
          );
        },
      ));

  Widget get _schoolWidget => _getWidgetWithBottomPadding(BlocSelector<SignUpBloc, SignUpState, String?>(
        selector: (state) {
          return state.school;
        },
        builder: (context, school) {
          return FormElementSchoolWidget(
            values: schoolNames,
            onDateSelected: (value) {
              context.read<SignUpBloc>().add(SignUpEvent.changeSchool(value));
            },
          );
        },
      ));

  Widget get _gradeWidget => _getWidgetWithBottomPadding(BlocSelector<SignUpBloc, SignUpState, String?>(
        selector: (state) {
          return state.grade;
        },
        builder: (context, grade) {
          return FormElementGradeWidget(
            values: gradeNames,
            onDateSelected: (value) {
              context.read<SignUpBloc>().add(SignUpEvent.changeGrade(value));
            },
          );
        },
      ));

  Widget get _subjectWidget => _getWidgetWithBottomPadding(BlocSelector<SignUpBloc, SignUpState, String?>(
        selector: (state) {
          return state.subject;
        },
        builder: (context, subject) {
          return FormElementSubjectWidget(
            values: subjectNames,
            onDateSelected: (value) {
              context.read<SignUpBloc>().add(SignUpEvent.changeSubject(value));
            },
          );
        },
      ));

  Widget get _passwordWidget => _getWidgetWithBottomPadding(BlocSelector<SignUpBloc, SignUpState, String?>(
        selector: (state) {
          return state.password;
        },
        builder: (context, state) {
          return FormElementPasswordWidget(
            onTextChanged: (value) {
              context.read<SignUpBloc>().add(SignUpEvent.changePassword(value));
            },
          );
        },
      ));

  Widget get _confirmWidget => _getWidgetWithBottomPadding(BlocSelector<SignUpBloc, SignUpState, String?>(
        selector: (state) {
          return state.password;
        },
        builder: (context, password) {
          return BlocSelector<SignUpBloc, SignUpState, String?>(
            selector: (state) {
              return state.confirmPassword;
            },
            builder: (context, confirmPassword) {
              return FormElementPasswordWidget(
                confirmPass: password,
                onTextChanged: (value) {
                  context.read<SignUpBloc>().add(SignUpEvent.changePassword(value));
                },
              );
            },
          );
        },
      ));
}
