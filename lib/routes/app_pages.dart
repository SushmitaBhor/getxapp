import 'package:get/get.dart';

import 'package:navigationgetx/pages/account/account_page.dart';

import 'package:navigationgetx/pages/alerts/alerts_page.dart';
import 'package:navigationgetx/pages/dashboard/dashboard_binding.dart';
import 'package:navigationgetx/pages/dashboard/dashboard_page.dart';
import 'package:navigationgetx/pages/home/home_page.dart';
import 'package:navigationgetx/pages/news/news_page.dart';
import 'app_routes.dart';

class AppPages {
  static var list = [
    GetPage(name: AppRoutes.HOME, page: () => HomePage()),
    GetPage(
        name: AppRoutes.DASHBOARD,
        page: () => DashboardPage(),
        binding: DashboardBinding()),
    GetPage(
      name: AppRoutes.NEWS,
      page: () => const NewsPage(),
    ),
    GetPage(
      name: AppRoutes.ACCOUNT,
      page: () => AccountPage(),
    ),
    GetPage(
      name: AppRoutes.ALERT,
      page: () => AlertsPage(),
    ),
  ];
}
