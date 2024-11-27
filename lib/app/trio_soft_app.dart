import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:triosoft/core/routes/app_routes.dart';
import 'package:triosoft/features/authorization/presentation/bloc/login/login_bloc.dart';
import 'package:triosoft/features/authorization/presentation/bloc/login/login_event.dart';

import '../core/app/core_app.dart';
import '../core/base/localization/easy_localization_config.dart';
import '../core/routes/general_graph.dart';
import '../di/dependency_injection.dart';

class TrioSoftApp extends StatelessWidget {
  const TrioSoftApp({super.key});

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
        path: EasyLocalizationConfig.path,
        supportedLocales: EasyLocalizationConfig.supportedLocales,
        fallbackLocale: EasyLocalizationConfig.fallbackLocale,
        startLocale: EasyLocalizationConfig.startLocale,
        child: BlocProvider(
          create: (context) => LoginBloc(locator.get(), locator.get(), locator.get(), locator.get())..add(const LoginEvent.getToken()),
          child: CoreAppWidget(
            appRouter: GoRouter(
              routes: [
                ...$generalRoutes,
              ],
              initialLocation: launchPath,
            ),
          ),
        ));
  }
}
