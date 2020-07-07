import 'package:coronavirus2020/core/constants/pages-header.dart';
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
      body: Container(
        child: Text('Home page'),
      ),
    );
  }
}
