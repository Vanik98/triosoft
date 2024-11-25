import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

abstract base class BaseGoRoute extends GoRouteData {
  Widget get page;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return getPage(child: page, state: state);
  }
}

Page getPage({
  required Widget child,
  required GoRouterState state,
}) {

  return CupertinoPage(
    key: state.pageKey,
    child: child,
  );
}
