import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:triosoft/features/authorization/data/model/request/add_user_request.dart';
import 'package:triosoft/features/authorization/presentation/bloc/login/login_bloc.dart';
import 'package:triosoft/features/authorization/presentation/bloc/login/login_event.dart';
import 'package:triosoft/features/authorization/presentation/bloc/sign_up_bloc/sign_up_bloc.dart';
import 'package:triosoft/generated/locale_keys.g.dart';

class SignUpBottomWidget extends StatelessWidget {
  const SignUpBottomWidget({super.key, required this.formKey});

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: BlocBuilder<SignUpBloc, SignUpState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: FilledButton(
                    style: ButtonStyle(
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))), // Rounded corners
                      backgroundColor: WidgetStateProperty.all(Colors.green),
                    ),
                    onPressed: () {
                      final isValid = formKey.currentState?.validate();
                      if (isValid == true) {
                        context.read<LoginBloc>().add(LoginEvent.registerUser(
                              AddUserRequest(
                                name: state.name!,
                                lastName: state.lastName!,
                                email: state.email!,
                                phoneNumber: state.phoneNumber!,
                                region: state.region!,
                                city: state.city!,
                                school: state.school!,
                                subject: 'state.subject!', // todo:change
                                grade: state.grade!,
                                password: state.password!,
                              ),
                            ));
                      }
                    },
                    child: Text(LocaleKeys.ok.tr())),
              );
            },
          ),
        ),
      ],
    );
  }
}
