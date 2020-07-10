import 'package:coronavirus2020/core/constants/environment.dart';
import 'package:coronavirus2020/core/services/http.dart';
import 'package:coronavirus2020/features/news/data/models/news.model.dart';

class NewsLocalDataSource {
  Future<List<NewsModel>> getData() async {
    List<NewsModel> result = [];

    try {
      final response = await dio.get(environement['apiUrl'] + '/api/news/');

      if (response.statusCode == 200) {
        for (dynamic i in response.data['result']) {
          result.add(NewsModel.fromJson(i));
        }
      }

      return result;
    } catch (e) {
      throw Exception('Exception: $e');
    }
  }
}
