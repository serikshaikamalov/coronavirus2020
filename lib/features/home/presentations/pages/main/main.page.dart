import 'package:coronavirus2020/core/constants/pages-header.dart';
import 'package:coronavirus2020/features/home/presentations/widgets/about-covid/about-covid.dart';
import 'package:coronavirus2020/features/home/presentations/widgets/main-menu/main-menu.dart';
import 'package:coronavirus2020/shared/widgets/wrapper.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          PagesHeader.home,
          style: TextStyle(color: Color(0XFF0A0D19)),
        ),
        centerTitle: true,
        backgroundColor: Color(0XFFAFAFA),
        elevation: 0,
        actions: [IconButton(icon: Icon(Icons.menu), onPressed: null)],
      ),
      body: buildContent(),
      drawer: Drawer(),
    );
  }

  Widget buildContent() {
    return AppWrapperWidget.wrapPageWithPadding(
      hasTop: false,
      page: Column(
        children: [
          AboutCovid(),
          SizedBox(height: 30),
          Container(
            width: double.infinity,
            child: Text(
              'Меню',
              textAlign: TextAlign.start,
              style:
                  TextStyle(fontSize: 16, color: Colors.black.withOpacity(0.7)),
            ),
          ),
          SizedBox(height: 10),
          MainMenu(),
        ],
      ),
    );
  }
}
