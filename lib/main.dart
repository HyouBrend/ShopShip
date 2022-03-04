import 'package:flutter/material.dart';
import 'package:shophip/shoppage/page/layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShopShip',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: LayoutPage(),
    );
  }
}
