import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigationgetx/pages/news/news_controller.dart';

class NewsPage extends GetView<NewsController> {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Center(
      child: Text(
        "News Page",
        style: TextStyle(fontSize: 20),
      ),
    )));
  }
}
