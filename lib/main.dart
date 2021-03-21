import 'package:flutter/material.dart';
import 'package:ui_test/button_tabbar/button_tabbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: ButtonTabBar(),
    );
  }
}
