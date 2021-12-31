// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_getx/src/pages/normal/first.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Route Management Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                //Navigator.of(context).push(MaterialPageRoute(builder: (_)=>FirstPage()))
                Get.to(FirstPage());
              },
              child: Text('Normal Route'),
            )
          ],
        ),
      ),
    );
  }
}
