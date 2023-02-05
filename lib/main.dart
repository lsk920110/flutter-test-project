import 'package:flutter/material.dart';
import 'package:testproject/RegistPage.dart';
import 'package:testproject/detailPage.dart';
import 'package:testproject/historyPage.dart';
import 'package:testproject/mainPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SubPage Example',
      theme: ThemeData(primaryColor: Colors.blue),
      // home: FirstPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => MainPage(),
        '/regist': (context) => RegistPage(),
        '/detail': (context) => DetailPage(),
        '/history': (context) => HistoryPage(),
      },
    );
  }
}
