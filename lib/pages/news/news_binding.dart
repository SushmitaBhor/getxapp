import 'package:get/instance_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:get/get.dart';
import 'package:navigationgetx/pages/news/news_controller.dart';

class NewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewsController>(() => NewsController());
  }
}
