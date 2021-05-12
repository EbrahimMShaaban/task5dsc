import 'package:flutter/material.dart';
import 'package:task5dsc/login.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Task DSC 5",
      home: Login(),
      );

  }
}
