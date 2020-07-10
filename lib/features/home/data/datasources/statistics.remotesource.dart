import 'package:coronavirus2020/core/constants/environment.dart';
import 'package:coronavirus2020/core/services/http.dart';
import 'package:coronavirus2020/features/home/data/models/statistic.model.dart';

class StatisticsRemoteSource {
  Future<StatisticModel> getData() async {
    try {
      StatisticModel result = StatisticModel(
        confirmed: 0,
        recovered: 0,
        deaths: 0,
      );

      final response =
          await dio.get(environement['apiUrl'] + '/api/statistics/');

      if (response.statusCode == 200) {
        return StatisticModel.fromJson(response.data['result']);
      }

      return result;
    } catch (e) {
      throw Exception(e);
    }
  }
}
