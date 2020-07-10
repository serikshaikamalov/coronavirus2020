import 'package:coronavirus2020/features/home/data/datasources/statistics.remotesource.dart';
import 'package:coronavirus2020/features/home/data/models/statistic.model.dart';
import 'package:coronavirus2020/locator.dart';
import 'package:coronavirus2020/shared/widgets/error/error.dart';
import 'package:coronavirus2020/shared/widgets/spinner/spinner.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Statistics extends StatefulWidget {
  @override
  _StatisticsState createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  double width;

  @override
  Widget build(BuildContext context) {
    this.width = MediaQuery.of(context).size.width;

    return FutureBuilder(
      future: locator<StatisticsRemoteSource>().getData(),
      builder: (ctx, state) {
        if (state.hasError == true) {
          return AppError(error: state.error);
        }

        if (state.hasData == true) {
          return buildContent(state.data);
        }

        return AppSpinner();
      },
    );
  }

  Widget buildContent(StatisticModel data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30),
        header(),
        SizedBox(height: 10),
        buildItem(
          label: 'Зарегистрированных случаев:',
          c: Colors.red,
          v: data.confirmed,
          p: 1,
        ),
        buildItem(
          label: 'Выздоровевших:',
          c: Colors.green,
          v: data.recovered,
          p: this.getPercentage(data.confirmed, data.recovered),
        ),
        buildItem(
          label: 'Летальных случаев: ',
          c: Colors.black,
          v: data.deaths,
          p: this.getPercentage(data.confirmed, data.deaths),
        ),
      ],
    );
  }

  double getPercentage(int total, int v) {
    if (total == null || total == 0 || v == null || v == 0) {
      return 0;
    }

    double onePercentageValue = 100 / total;
    return (v*onePercentageValue)/100;
  }

  Widget header() => Container(
        child: Text(
          'Последние данные по Казахстану',
          style: TextStyle(fontSize: 16, color: Colors.black.withOpacity(0.7)),
        ),
      );

  Widget buildItem({
    String label,
    Color c,
    int v,
    double p,
  }) =>
      SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label),
            SizedBox(height: 5),
            buildPercentage(c, v, p),
            SizedBox(height: 10)
          ],
        ),
      );

  Widget buildPercentage(Color c, int v, double percentage) => SizedBox(
        child: LinearPercentIndicator(
          width: this.width - 30,
          lineHeight: 22,
          percent: percentage,
          center: Text(
            v.toString(),
            style: TextStyle(color: Colors.white.withOpacity(0.9)),
          ),
          animation: true,
          backgroundColor: Colors.grey,
          progressColor: c,
        ),
      );
}
