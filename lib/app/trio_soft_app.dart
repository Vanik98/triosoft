import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:triosoft/core/routes/app_routes.dart';

import '../core/app/core_app.dart';
import '../core/base/localization/easy_localization_config.dart';
import '../core/routes/general_graph.dart';

class TrioSoftApp extends StatelessWidget {
  const TrioSoftApp({super.key});

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
        path: EasyLocalizationConfig.path,
        supportedLocales: EasyLocalizationConfig.supportedLocales,
        fallbackLocale: EasyLocalizationConfig.fallbackLocale,
        startLocale: EasyLocalizationConfig.startLocale,
        child: CoreAppWidget(
          appRouter: GoRouter(
            routes: [
              ...$generalRoutes,
            ],
            initialLocation: launchPath,
          ),
        ));
  }
}
