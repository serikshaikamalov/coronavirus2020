import 'package:coronavirus2020/core/constants/routes.dart';
import 'package:coronavirus2020/features/home/presentations/pages/main.page.dart';
import 'package:flutter/material.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      // Home
      case Routes.homePage:
        return MaterialPageRoute(builder: (_) => HomePage());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
