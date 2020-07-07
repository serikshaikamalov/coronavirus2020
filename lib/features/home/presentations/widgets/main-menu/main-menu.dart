import 'package:coronavirus2020/features/home/data/datasources/menu.datasource.dart';
import 'package:coronavirus2020/features/home/data/models/menu-item.model.dart';
import 'package:flutter/material.dart';

class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  List<MenuItemModel> data = MenuLocalDataSource().getData();

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Widget buildContent() {
    return GridView.builder(
      itemCount: data.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
      ),
      itemBuilder: (ctx, index) => buildMenuItem(data[index]),
    );
  }

  Widget buildMenuItem(MenuItemModel m) {
    return Container(child: Text(m.label));
  }
}
