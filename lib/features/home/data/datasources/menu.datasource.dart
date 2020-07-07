import 'package:coronavirus2020/features/home/data/models/menu-item.model.dart';

class MenuLocalDataSource {
  List<MenuItemModel> getData() {
    final List<MenuItemModel> data = [
      MenuItemModel(label: 'Симптомы', route: '/'),
      MenuItemModel(label: 'Лечения', route: '/'),
      MenuItemModel(label: 'Статистика', route: '/'),
      MenuItemModel(label: 'Новости', route: '/'),
      MenuItemModel(label: 'Вопросы-ответы', route: '/'),
      MenuItemModel(label: 'Контакты', route: '/'),
    ];

    return data;
  }
}
