import 'package:coronavirus2020/core/constants/pages-header.dart';
import 'package:coronavirus2020/features/faq/data/datasource/faq.remote-source.dart';
import 'package:coronavirus2020/features/faq/data/models/faq.model.dart';
import 'package:coronavirus2020/locator.dart';
import 'package:coronavirus2020/shared/widgets/error/error.dart';
import 'package:coronavirus2020/shared/widgets/spinner/spinner.dart';
import 'package:coronavirus2020/shared/widgets/wrapper.dart';
import 'package:flutter/material.dart';

class FaqPage extends StatefulWidget {
  @override
  _FaqPageState createState() => _FaqPageState();
}

class _FaqPageState extends State<FaqPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(PagesHeader.faq)),
      body: FutureBuilder(
        future: locator<FaqRemoteSource>().getData(),
        builder: (ctx, state) {
          if (state.hasError == true) {
            return AppError(error: state.error);
          }

          if (state.hasData == true) {
            return buildContent(state.data);
          }

          return AppSpinner();
        },
      ),
    );
  }

  Widget buildContent(List<FaqModel> data) {
    return ListView.builder(
      padding: EdgeInsets.all(15),
      shrinkWrap: true,
      itemCount: data.length,
      itemBuilder: (ctx, index) => buildItem(data[index]),
    );
  }

  Widget buildItem(FaqModel f) => Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildHeader(f.title),
            SizedBox(height: 10),
            buildText(f.text),
            SizedBox(height: 30),
          ],
        ),
      );

  Widget buildHeader(String h) {
    return Text(
      h,
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
    );
  }

  Widget buildText(String t) {
    return Text(
      t,
      style: TextStyle(fontSize: 12),
    );
  }
}
