import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:triosoft/core/routes/general_graph.dart';
import 'package:triosoft/features/authorization/presentation/bloc/login/login_bloc.dart';
import 'package:triosoft/features/authorization/presentation/bloc/login/login_event.dart';
import 'package:triosoft/features/home/presentation/bloc/profile_bloc.dart';
import 'package:triosoft/features/home/presentation/bloc/profile_event.dart';
import 'package:triosoft/generated/locale_keys.g.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final token = context.read<LoginBloc>().state.token!;
    return BlocListener<LoginBloc, LoginState>(
      listenWhen: (oldState, newState) => newState.needToLogOut == true && newState.needToLogOut != oldState.needToLogOut,
      listener: (context, state) {
        SignUpRoute().go(context);
      },
      child: BlocProvider(
        create: (context) => ProfileBloc()..add(ProfileEvent.getProfileInfo(token)),
        child: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            if (state.fullName == null) return CircularProgressIndicator();
            return Scaffold(
              body: Column(
                children: [
                  const SizedBox(height: 300),
                  Center(
                      child: Text(
                    '${LocaleKeys.name.tr()} & ${LocaleKeys.last_name.tr()} -> ${state.fullName}',
                    maxLines: 2,
                  )),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: FilledButton(
                        onPressed: () {
                          context.read<LoginBloc>().add(const LoginEvent.logOutUser());
                        },
                        child: Text(LocaleKeys.log_out.tr())),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
