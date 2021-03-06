import 'package:coronavirus2020/core/constants/routes.dart';
import 'package:coronavirus2020/features/home/data/models/menu-item.model.dart';

class MenuLocalDataSource {
  Future<List<MenuItemModel>> getData() async {
    final List<MenuItemModel> data = [
      MenuItemModel(
        label: 'Симптомы',
        route: Routes.symptomsPage,
        color: 0XFFEE4D23,
        image: 'cough.png',
      ),
      MenuItemModel(
        label: 'Лечения/Профилактика',
        route: Routes.preventionPage,
        color: 0XFF449B80,
        image: 'washing-hands.png',
      ),
      MenuItemModel(
        label: 'Статистика',
        route: Routes.statisticsPage,
        color: 0XFF0A40E3,
        image: 'statistics.png',
      ),
      MenuItemModel(
        label: 'Новости',
        route: Routes.newsPage,
        color: 0XFF4A2669,
        image: 'information.png',
      ),
      MenuItemModel(
        label: 'Вопросы-ответы',
        route: Routes.faqPage,
        color: 0XFF0A0D19,
        image: 'question.png',
      ),
      MenuItemModel(
        label: 'Контакты',
        route: Routes.callCenterPage,
        color: 0XFFE80E19,
        image: 'technical-support.png',
      ),
    ];

    return data;
  }
}
