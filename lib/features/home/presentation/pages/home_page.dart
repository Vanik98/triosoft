import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:triosoft/di/dependency_injection.dart';
import 'package:triosoft/features/home/presentation/bloc/profile_bloc.dart';
import 'package:triosoft/features/home/presentation/bloc/profile_event.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.token});

  final String token;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileBloc(locator.get())..add(ProfileEvent.getProfileInfo(token)),
      child: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          if (state.fullName == null) return const CircularProgressIndicator();
          return Scaffold(
            body: Column(
              children: [
                SizedBox(height: 300),
                Text('Hello my friend ${state.fullName}'),
              ],
            ),
          );
        },
      ),
    );
  }
}
