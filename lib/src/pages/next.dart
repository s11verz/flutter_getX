// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home.dart';



class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${Get.arguments}"),
            RaisedButton(
              onPressed: () {
                //Navigator.of(context).pop();
                Get.back();
              },
              child: Text('Go Back'),
            ),
            
          ],
        ),
      ),
    );
  }
}
