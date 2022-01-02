import 'package:flutter/material.dart';
import 'package:flutter_getx/src/controller/count_controller_with_getx.dart';
import 'package:get/get.dart';

class BindingPage extends GetView<CountControllerWithGetX> {
  const BindingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Column(
        children: [
          Obx(()=>Text(
            controller.count.toString(),
            style: TextStyle(fontSize: 40),
          )),
          RaisedButton(onPressed: (){
            //Get.find<CountControllerWithGetX>().increase();
            CountControllerWithGetX.to.increase();
          })
        ],
      ),
    );
  }
}
