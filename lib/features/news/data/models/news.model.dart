import 'package:flutter/material.dart';

class NewsModel {
  final String title;
  final String image;
  final String date;
  final String link;

  NewsModel({
    @required this.title,
    @required this.image,
    @required this.date,
    @required this.link,
  });

  factory NewsModel.fromJson(Map<String, dynamic> jsonData) {
    return NewsModel(
      title: jsonData['title'],
      image: jsonData['image'],
      date: jsonData['cdate'],
      link: jsonData['link'],
    );
  }
}
