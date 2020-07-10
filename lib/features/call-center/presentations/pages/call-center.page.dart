import 'package:coronavirus2020/core/constants/pages-header.dart';
import 'package:coronavirus2020/features/call-center/data/datasources/call-center.local-data.dart';
import 'package:coronavirus2020/features/call-center/data/models/callcenter.model.dart';
import 'package:coronavirus2020/locator.dart';
import 'package:coronavirus2020/shared/widgets/error/error.dart';
import 'package:coronavirus2020/shared/widgets/spinner/spinner.dart';
import 'package:flutter/material.dart';

class CallCenterPage extends StatefulWidget {
  @override
  _CallCenterPageState createState() => _CallCenterPageState();
}

class _CallCenterPageState extends State<CallCenterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(PagesHeader.callCenter)),
      body: FutureBuilder(
        future: locator<CallCenterLocalData>().getData(),
        builder: (ctx, state) {
          if (state.hasError == true) {
            return AppError(
              error: state.error,
            );
          }

          if (state.hasData == true) {
            return buildContent(state.data);
          }

          return AppSpinner();
        },
      ),
    );
  }

  Widget buildContent(List<CallCenterModel> data) {
    return ListView.builder(
      padding: EdgeInsets.all(15),
      shrinkWrap: true,
      itemCount: data.length,
      itemBuilder: (ctx, index) => this.buildItem(data[index]),
    );
  }

  Widget buildItem(CallCenterModel c) => Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              c.label,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: c.contacts.length,
              itemBuilder: (ctx, index) =>
                  this.buildContactItem(c.contacts[index]),
            ),
            SizedBox(height: 20),
          ],
        ),
      );

  Widget buildContactItem(String c) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Text(c),
    );
  }
}
