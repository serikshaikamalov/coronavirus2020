import 'package:coronavirus2020/core/constants/pages-header.dart';
import 'package:coronavirus2020/features/news/data/datasource/news.local-datasource.dart';
import 'package:coronavirus2020/features/news/data/models/news.model.dart';
import 'package:coronavirus2020/locator.dart';
import 'package:coronavirus2020/shared/widgets/empty.dart';
import 'package:coronavirus2020/shared/widgets/error/error.dart';
import 'package:coronavirus2020/shared/widgets/spinner/spinner.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PagesHeader.news),
      ),
      body: FutureBuilder(
        future: locator<NewsLocalDataSource>().getData(),
        builder: (ctx, state) {
          // Error
          if (state.hasError == true) {
            return AppError(error: state.error);
          }

          // Data
          if (state.hasData == true) {
            return this.buildContent(state.data);
          }

          // Empty
          if (state.data != null && state.data.length == 0) {
            return AppEmpty();
          }

          // Default: Spinner
          return AppSpinner();
        },
      ),
    );
  }

  Widget buildContent(List<NewsModel> data) {
    return ListView.builder(
        padding: EdgeInsets.all(15),
        shrinkWrap: true,
        itemCount: data.length,
        itemBuilder: (ctx, index) => this.newsItemBuilder(data[index]));
  }

  Widget newsItemBuilder(NewsModel n) {
    return Container(
      padding: EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          newsImage(n.image),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                newsTitle(n.title, n.link),
                newsDate(n.date),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget newsImage(String imageUrl) {
    return Container(
      child: Image.network(
        imageUrl,
        width: 50,
      ),
    );
  }

  Widget newsTitle(String title, String url) {
    return FlatButton(
      onPressed: () => go(url),
      padding: EdgeInsets.zero,
      child: Text(
        title,
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      ),
    );
  }

  Widget newsDate(String date) {
    return Container(
      child: Text(
        date,
        style: TextStyle(fontSize: 10, color: Colors.black.withOpacity(0.5)),
      ),
    );
  }

  go(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not lauch $url';
    }
  }
}
