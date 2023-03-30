import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:navigationgetx/pages/home/home_controller.dart';

import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(controller.title),
        ),
        body: Container(
            child: Center(
                child: Text("Home Page", style: TextStyle(fontSize: 20)))));
  }
}
