import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:triosoft/core/base/extensions/widget_extensions.dart';
import 'package:triosoft/features/authorization/presentation/bloc/login/login_bloc.dart';
import 'package:triosoft/features/authorization/presentation/bloc/sign_up_bloc/sign_up_bloc.dart';
import 'package:triosoft/features/authorization/presentation/widgets/sign_up_bottom_widget.dart';

import '../../../../di/dependency_injection.dart';
import '../../../language/presentation/widgets/language_widget.dart';
import '../widgets/sign_up_form_elements_widget.dart';
import '../widgets/sign_up_header_widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginBloc(locator.get(), locator.get())),
        BlocProvider(create: (context) => SignUpBloc()),
      ],
      child: SafeArea(
        child: Scaffold(
          appBar: _appBar(context),
          body: _body(),
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
