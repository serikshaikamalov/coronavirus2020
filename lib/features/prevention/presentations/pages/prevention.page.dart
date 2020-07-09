import 'package:coronavirus2020/features/prevention/data/datasources/prevention-local.datasource.dart';
import 'package:coronavirus2020/features/prevention/data/models/instruction.model.dart';
import 'package:coronavirus2020/shared/widgets/error/error.dart';
import 'package:coronavirus2020/shared/widgets/spinner/spinner.dart';
import 'package:coronavirus2020/shared/widgets/wrapper.dart';
import 'package:flutter/material.dart';

class PreventionPage extends StatefulWidget {
  @override
  _PreventionPageState createState() => _PreventionPageState();
}

class _PreventionPageState extends State<PreventionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Правила профилактики'),
      ),
      body: AppWrapperWidget.wrapPageWithPadding(page: buildPage()),
    );
  }

  Widget buildPage() {
    return FutureBuilder(
      future: PreventionLocalDataSource().getData(),
      builder: (ctx, state) {
        if (state.data != null) {
          return buildContent(state.data);
        }

        if (state.hasError == true) {
          return AppError(error: 'Something wrong! Please try later');
        }

        return AppSpinner();
      },
    );
  }

  Widget buildContent(List<InstructionModel> data) {
    return Container(
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (ctx, index) => buildItem(data[index]),
      ),
    );
  }

  Widget buildItem(InstructionModel i) {
    return Container(
      padding: EdgeInsets.only(bottom: 15),
      child: Text(i.title),
    );
  }
}
