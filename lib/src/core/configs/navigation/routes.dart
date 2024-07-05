import 'dart:io';
import 'package:flutter/material.dart';
import 'package:spotify_redesing_app/src/presentation/choose_mode/pages/choose_mode.dart';
import '../../../presentation/intro/pages/get_started.dart';
import '../../../presentation/splash/pages/splash.dart';

class Routes {
  static const splash = '/';
  static const started = '/started';
  static const choose = '/choose';


  Route routes(RouteSettings settings) {
    // ignore: unused_local_variable
    final args = settings.arguments;
    switch (settings.name) {
      case splash:
        return _createRoute(
          settings,
                (context) => SplashPage(),
        );
      case started:
        return _createRoute(
          settings,
              (context) => GetStartedPage(),
        );
      case choose:
        return _createRoute(
          settings,
              (context) => ChooseModePage(),
        );
    }
    throw Exception('This route does not exist');
  }

  Route _createRoute(
    RouteSettings? settings,
    Widget Function(BuildContext? context) predicated,
  ) {
    if (Platform.isIOS) {
      return MaterialPageRoute(
          builder: (context) => predicated(context), settings: settings);
    }
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (context, animation, secondaryAnimation) =>
          predicated(context),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        final tween = Tween(begin: begin, end: end);
        final offsetAnimation = animation.drive(tween);
        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }
}
