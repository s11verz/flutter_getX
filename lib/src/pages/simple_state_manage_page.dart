// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_getx/src/controller/count_controller_with_getx.dart';
import 'package:flutter_getx/src/controller/count_controller_with_provider.dart';
import 'package:flutter_getx/src/pages/state/with_getx.dart';
import 'package:flutter_getx/src/pages/state/with_provider.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:provider/provider.dart';

class SimpleStateManagePage extends StatelessWidget {
  const SimpleStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Get.put(CountControllerWithGetX());

    return Scaffold(
      appBar: AppBar(
        title: Text('단순상태관리'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: WithGetX()),
            Expanded(
                child: ChangeNotifierProvider<CountControllerWithProvider>(
                    create: (_) => CountControllerWithProvider(),
                    child: WithProvider()
                )
            )
          ],
        ),
      ),
    );
  }
}
