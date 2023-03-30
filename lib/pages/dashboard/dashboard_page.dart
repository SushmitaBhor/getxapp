import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigationgetx/pages/account/account_page.dart';
import 'package:navigationgetx/pages/alerts/alerts_page.dart';
import 'package:navigationgetx/pages/dashboard/dashboard_binding.dart';
import 'package:navigationgetx/pages/home/home_page.dart';
import 'package:navigationgetx/pages/news/news_page.dart';

import 'dashboard_controller.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [HomePage(), NewsPage(), AlertsPage(), AccountPage()],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
              unselectedItemColor: Colors.black,
              selectedItemColor: Colors.redAccent,
              onTap: controller.changeTabIndex,
              currentIndex: controller.tabIndex,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              items: [
                _bottomNavigationBarItem(
                    label: 'Home', icon: CupertinoIcons.home),
                _bottomNavigationBarItem(
                    icon: CupertinoIcons.news, label: 'News'),
                _bottomNavigationBarItem(
                    icon: CupertinoIcons.bell, label: "Notifications"),
                _bottomNavigationBarItem(
                    icon: CupertinoIcons.person, label: "Account")
              ]));
    });
  }

  _bottomNavigationBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(icon: Icon(icon), label: label);
  }
}
