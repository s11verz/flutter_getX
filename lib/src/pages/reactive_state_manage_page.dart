// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_getx/src/controller/count_controller_with_getx.dart';
import 'package:flutter_getx/src/controller/count_controller_with_provider.dart';
import 'package:flutter_getx/src/controller/count_controller_with_reactive.dart';
import 'package:flutter_getx/src/pages/state/with_getx.dart';
import 'package:flutter_getx/src/pages/state/with_provider.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:provider/provider.dart';

class ReactiveStateManagePage extends StatelessWidget {
  const ReactiveStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithReactive());

    return Scaffold(
      appBar: AppBar(
        title: Text('반응형상태관리'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Reactive',
              style: TextStyle(fontSize: 30),
            ),
            Obx(() => Text(
                  "${Get.find<CountControllerWithReactive>().count.value}",
                  style: TextStyle(fontSize: 50),
                )),
            RaisedButton(
                child: Text(
                  "+",
                  style: TextStyle(fontSize: 30),
                ),
                onPressed: () {
                  Get.find<CountControllerWithReactive>().increase();
                })
          ],
        ),
      ),
    );
  }
}
