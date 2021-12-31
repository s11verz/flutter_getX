// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_getx/src/pages/normal/second.dart';
import 'package:get/get.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                //Navigator.of(context).push(MaterialPageRoute(builder: (_)=>FirstPage()))
                Get.to(SecondPage());
              },
              child: Text('Second Page'),
            )
          ],
        ),
      ),
    );
  }
}
