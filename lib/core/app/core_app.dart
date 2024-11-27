import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CoreAppWidget extends StatefulWidget {
  final GoRouter appRouter;

  const CoreAppWidget({
    super.key,
    required this.appRouter,
  });

  @override
  State<CoreAppWidget> createState() => _CoreAppWidgetState();
}

class _CoreAppWidgetState extends State<CoreAppWidget> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: widget.appRouter,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
