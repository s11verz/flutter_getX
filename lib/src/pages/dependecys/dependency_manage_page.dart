import 'package:flutter/material.dart';
import 'package:flutter_getx/src/controller/dependency_controller.dart';
import 'package:flutter_getx/src/pages/dependecys/get_lazyput.dart';
import 'package:flutter_getx/src/pages/dependecys/get_put.dart';
import 'package:get/get.dart';

class DependencyManagePage extends StatelessWidget {
  const DependencyManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("의존성 주입"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
                child: Text("Getput"),
                onPressed: () {
                  Get.to(GetPut(), binding: BindingsBuilder(() {
                    Get.put(DependencyController());
                  }));
                }),
            RaisedButton(
                child: Text("Get.lazyPut"),
                onPressed: () {
                  Get.to(GetLazyPut(), binding: BindingsBuilder(() {
                    Get.lazyPut<DependencyController>(
                        () => DependencyController());
                  }));
                }),
            RaisedButton(
                child: Text("Get.putAsync"),
                onPressed: () {
                  Get.to(GetPut(), binding: BindingsBuilder(() {
                    Get.putAsync<DependencyController>(() async {
                      await Future.delayed(Duration(seconds: 5));
                      return DependencyController();
                    });
                  }));
                }),
            RaisedButton(
                child: Text("Get.create"),
                onPressed: () {
                  Get.to(GetPut(), binding: BindingsBuilder(() {
                    Get.create<DependencyController>(
                        () => DependencyController());
                  }));
                }),
          ],
        ),
      ),
    );
  }
}
