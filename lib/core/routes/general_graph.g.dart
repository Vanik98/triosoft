// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_graph.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeRoute,
      $signUpRoute,
      $launchRoute,
    ];

RouteBase get $homeRoute => GoRouteData.$route(
      path: '/home',
      factory: $HomeRouteExtension._fromState,
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => HomeRoute(
        token: state.uri.queryParameters['token']!,
      );

  String get location => GoRouteData.$location(
        '/home',
        queryParams: {
          'token': token,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $signUpRoute => GoRouteData.$route(
      path: '/sign-up',
      factory: $SignUpRouteExtension._fromState,
    );

extension $SignUpRouteExtension on SignUpRoute {
  static SignUpRoute _fromState(GoRouterState state) => SignUpRoute();

  String get location => GoRouteData.$location(
        '/sign-up',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $launchRoute => GoRouteData.$route(
      path: '/launch',
      factory: $LaunchRouteExtension._fromState,
    );

extension $LaunchRouteExtension on LaunchRoute {
  static LaunchRoute _fromState(GoRouterState state) => LaunchRoute();

  String get location => GoRouteData.$location(
        '/launch',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
