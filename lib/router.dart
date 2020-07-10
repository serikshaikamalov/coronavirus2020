import 'package:coronavirus2020/core/constants/routes.dart';
import 'package:coronavirus2020/features/call-center/presentations/pages/call-center.page.dart';
import 'package:coronavirus2020/features/faq/presentations/faq.page.dart';
import 'package:coronavirus2020/features/home/presentations/pages/main/main.page.dart';
import 'package:coronavirus2020/features/news/presentations/pages/news.page.dart';
import 'package:coronavirus2020/features/prevention/presentations/pages/prevention.page.dart';
import 'package:coronavirus2020/features/statistics/presentations/pages/statistics.page.dart';
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
      case Routes.faqPage:
        return MaterialPageRoute(builder: (_) => FaqPage());
      case Routes.callCenterPage:
        return MaterialPageRoute(builder: (_) => CallCenterPage());
      case Routes.newsPage:
        return MaterialPageRoute(builder: (_) => NewsPage());
      case Routes.statisticsPage:
        return MaterialPageRoute(builder: (_) => StatisticsPage());
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
