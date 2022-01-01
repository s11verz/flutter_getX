// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_getx/src/pages/normal/first.dart';
import 'package:flutter_getx/src/pages/reactive_state_manage_page.dart';
import 'package:flutter_getx/src/pages/simple_state_manage_page.dart';
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
            ),
            RaisedButton(
              onPressed: () {
                Get.toNamed("/first");
              },
              child: Text('Named Route'),
            ),
            RaisedButton(
              onPressed: () {
                Get.toNamed("/next", arguments: "silver");
              },
              child: Text('Arguments 전달'),
            ),
            RaisedButton(
              onPressed: () {
                Get.toNamed("/user/123?name=은지&age=26");
              },
              child: Text('동적 url'),
            ),
            RaisedButton(
              onPressed: () {
                Get.to(SimpleStateManagePage());
              },
              child: Text('단순상태관리'),
            ),
            RaisedButton(
              onPressed: () {
                Get.to(ReactiveStateManagePage());
              },
              child: Text('반응형상태관리'),
            )
          ],
        ),
      ),
    );
  }
}

// class User{
//   String? name="silver";
//   int? age=26;
//   User({this.name, this.age});
// }
