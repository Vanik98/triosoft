import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:triosoft/core/routes/general_graph.dart';
import 'package:triosoft/features/authorization/presentation/bloc/login/login_bloc.dart';

class LaunchPage extends StatelessWidget {
  const LaunchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listenWhen: (oldState, newState) => newState.token != oldState.token,
      listener: (context, state) {
        if (state.token?.isNotEmpty == true) {
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
