import 'package:coronavirus2020/core/constants/routes.dart';
import 'package:coronavirus2020/features/home/presentations/pages/main/main.page.dart';
import 'package:coronavirus2020/features/prevention/presentations/pages/prevention.page.dart';
import 'package:coronavirus2020/features/symptoms/presentations/pages/symptoms.page.dart';
import 'package:flutter/material.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.homePage:
        return MaterialPageRoute(builder: (_) => HomePage());
      case Routes.symptomsPage:
        return MaterialPageRoute(builder: (_) => SymptomsPage());
      case Routes.preventionPage:
        return MaterialPageRoute(builder: (_) => PreventionPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
