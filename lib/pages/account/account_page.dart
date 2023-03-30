import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'account_controller.dart';

class AccountPage extends GetView<AccountController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Center(
                child: Column(
      children: [
        Obx(() => Text("Counter ${controller.counter.value}")),
        Text("Accounts page", style: TextStyle(fontSize: 20)),
        TextButton(onPressed: controller.increaseCounter, child: Text('Add'))
      ],
    ))));
  }
}
