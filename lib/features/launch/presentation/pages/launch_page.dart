import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:triosoft/core/routes/general_graph.dart';
import 'package:triosoft/di/dependency_injection.dart';
import 'package:triosoft/features/launch/presentation/bloc/launch_bloc.dart';
import 'package:triosoft/features/launch/presentation/bloc/launch_event.dart';

class LaunchPage extends StatelessWidget {
  const LaunchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LaunchBloc(locator.get())..add(const LaunchEvent.checkIsRegisteredUser()),
      child: BlocListener<LaunchBloc, LaunchState>(
        listenWhen: (oldState, newState) => newState.isRegisteredUser != null && newState.isRegisteredUser != oldState.isRegisteredUser,
        listener: (context, state) {
          if (state.isRegisteredUser!) {
            HomeRoute().go(context);
          } else {
            SignInRoute().go(context);
          }
        },
        child: Scaffold(
          body: Container(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
