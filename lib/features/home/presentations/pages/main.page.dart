import 'package:coronavirus2020/core/constants/pages-header.dart';
import 'package:coronavirus2020/features/home/presentations/widgets/main-menu/main-menu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(PagesHeader.home)),
      body: buildContent(),
    );
  }

  Widget buildContent() {
    return Container(
      child: Column(
        children: [
          MainMenu(),
        ],
      ),
    );
  }
}
