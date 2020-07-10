import 'package:coronavirus2020/core/constants/pages-header.dart';
import 'package:coronavirus2020/features/home/presentations/widgets/statistics/staistics.dart';
import 'package:coronavirus2020/shared/widgets/wrapper.dart';
import 'package:flutter/material.dart';

class StatisticsPage extends StatefulWidget {
  @override
  _StatisticsPageState createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PagesHeader.statistics),
      ),
      body: AppWrapperWidget.wrapPageWithPadding(page: Statistics(), hasTop: false),
    );
  }
}
