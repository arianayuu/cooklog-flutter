import 'package:cooklog/routing/route_names.dart';
import 'package:cooklog/views/about/about_view.dart';
import 'package:cooklog/views/help/help_view.dart';
import 'package:cooklog/views/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: missing_return
Route<dynamic> generateRoute(RouteSettings settings) {
  print('generateRoute: ${settings.name}');
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView());
    case AboutRoute:
      return _getPageRoute(AboutView());
    case HelpRoute:
      return _getPageRoute(HelpView());
    default:
  }
}

PageRoute _getPageRoute(Widget child) {
  return _FadeRoute(child: child);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  _FadeRoute({this.child})
      : super(
            pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) =>
                child,
            transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) =>
                FadeTransition(
                  opacity: animation,
                  child: child,
                ));
}
