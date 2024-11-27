import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:triosoft/core/base/route/base_route.dart';
import 'package:triosoft/core/routes/app_routes.dart';
import 'package:triosoft/features/launch/presentation/pages/launch_page.dart';

import '../../features/authorization/presentation/pages/sign_up_page.dart';
import '../../features/home/presentation/pages/home_page.dart';

part 'general_graph.g.dart';

List<RouteBase> get $generalRoutes => $appRoutes;

@TypedGoRoute<HomeRoute>(path: homePath)
@immutable
final class HomeRoute extends BaseGoRoute {
  @override
  Widget get page => const HomePage();
}

@TypedGoRoute<SignUpRoute>(path: signUpPath)
@immutable
final class SignUpRoute extends BaseGoRoute {
  SignUpRoute();

  @override
  Widget get page => const SignUpPage();
}

@TypedGoRoute<LaunchRoute>(path: launchPath)
@immutable
final class LaunchRoute extends BaseGoRoute {
  LaunchRoute();

  @override
  Widget get page => const LaunchPage();
}
