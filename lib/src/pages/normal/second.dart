// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                //Navigator.of(context).pop();
                Get.back();
              },
              child: Text('Go Back'),
            ),
            RaisedButton(
              onPressed: () {
                //Get.to(Home());
                Get.offAll(Home());
              },
              child: Text('Go Home'),
            )
          ],
        ),
      ),
    );
  }
}
