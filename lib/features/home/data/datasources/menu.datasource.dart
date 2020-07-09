import 'package:coronavirus2020/features/home/data/models/menu-item.model.dart';

class MenuLocalDataSource {
  Future<List<MenuItemModel>> getData() async {
    final List<MenuItemModel> data = [
      MenuItemModel(
        label: 'Симптомы',
        route: '/',
        color: 0XFFEE4D23,
        image: 'cough.png',
      ),
      MenuItemModel(
        label: 'Лечения',
        route: '/',
        color: 0XFF449B80,
        image: 'washing-hands.png',
      ),
      MenuItemModel(
        label: 'Статистика',
        route: '/',
        color: 0XFF0A40E3,
        image: 'statistics.png',
      ),
      MenuItemModel(
        label: 'Новости',
        route: '/',
        color: 0XFF4A2669,
        image: 'information.png',
      ),
      MenuItemModel(
        label: 'Вопросы-ответы',
        route: '/',
        color: 0XFF0A0D19,
        image: 'question.png',
      ),
      MenuItemModel(
        label: 'Контакты',
        route: '/',
        color: 0XFFE80E19,
        image: 'technical-support.png',
      ),
    ];

    return data;
  }
}
