import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:triosoft/core/base/extensions/widget_extensions.dart';
import 'package:triosoft/core/routes/general_graph.dart';
import 'package:triosoft/features/authorization/presentation/bloc/login/login_bloc.dart';
import 'package:triosoft/features/authorization/presentation/bloc/sign_up_bloc/sign_up_bloc.dart';
import 'package:triosoft/features/authorization/presentation/widgets/sign_up_bottom_widget.dart';
import 'package:triosoft/generated/locale_keys.g.dart';

import '../../../language/presentation/widgets/language_widget.dart';
import '../widgets/sign_up_form_elements_widget.dart';
import '../widgets/sign_up_header_widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpBloc(),
      child: MultiBlocListener(
        listeners: [
          BlocListener<LoginBloc, LoginState>(
            listenWhen: (oldState, newState) => newState.token != null && newState.token != oldState.token,
            listener: (context, state) {
              HomeRoute().push(context);
            },
          ),
          BlocListener<LoginBloc, LoginState>(
            listenWhen: (oldState, newState) => newState.isShowDialog == true && newState.isShowDialog != oldState.isShowDialog,
            listener: (context, state) {
              showDialog(
                context: context,
                barrierDismissible: false, // Prevents dismissing by tapping outside
                builder: (BuildContext context) {
                  return const AlertDialog(content: CircularProgressIndicator());
                },
              );
            },
          ),
          BlocListener<LoginBloc, LoginState>(
            listenWhen: (oldState, newState) => newState.isShowDialog == false && newState.isShowDialog != oldState.isShowDialog,
            listener: (context, state) {
              context.pop();
            },
          ),
          BlocListener<LoginBloc, LoginState>(
            listenWhen: (oldState, newState) => newState.isShowError == true && newState.isShowError != oldState.isShowError,
            listener: (context, state) {
              showDialog(
                context: context,
                barrierDismissible: false, // Prevents dismissing by tapping outside
                builder: (BuildContext context) {
                  return AlertDialog(content: Text(LocaleKeys.error.tr()));
                },
              );
            },
          ),
        ],
        child: SafeArea(
          child: Scaffold(
            appBar: _appBar(context),
            body: _body(),
          ),
        ),
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            context.openSalonDefaultBottomSheetDialog(const LanguageWidget());
          },
        ),
      ],
    );
  }

  Widget _body() {
    final formKey = GlobalKey<FormState>();
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            const SignUpHeaderWidget(),
            const Expanded(child: SingleChildScrollView(child: SignUpPageFormElementsWidget())),
            SignUpBottomWidget(formKey: formKey),
          ],
        ),
      ),
    );
  }
}
