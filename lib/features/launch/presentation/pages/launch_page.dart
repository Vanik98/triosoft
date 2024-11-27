import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:triosoft/core/routes/general_graph.dart';
import 'package:triosoft/features/authorization/presentation/bloc/login/login_bloc.dart';

import '../../../authorization/presentation/bloc/login/login_event.dart';

class LaunchPage extends StatelessWidget {
  const LaunchPage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<LoginBloc>().add(const LoginEvent.getToken());
    return BlocListener<LoginBloc, LoginState>(
      listenWhen: (oldState, newState) => newState.token != null,
      listener: (context, state) {
        if (state.token!.isNotEmpty) {
          HomeRoute().go(context);
        } else {
          SignUpRoute().go(context);
        }
      },
      child: Scaffold(
        body: Container(
          color: Colors.white,
        ),
      ),
    );
  }
}
