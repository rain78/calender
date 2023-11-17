import 'package:flutter/material.dart';
import 'package:flutter_app/pages/HomePage/HomePage.dart';
// import 'package:flutter_app/pages/MyHome/MyHomePage.dart';
import 'package:flutter_app/pages/MyHomePage.dart';
import 'package:flutter_app/pages/SecondPage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      initialRoute: '/', // 指定初始路由
      routes: {
        '/': (context) => HomePage(), // 初始页面
        '/homePage': (context) => MyHomePage(), // 初始页面
        '/second': (context) => SecondPage(), // 第二个页面
      },
    );
  }
}
