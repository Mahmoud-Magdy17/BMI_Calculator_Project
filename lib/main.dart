import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/second_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "theSecondPage" : (context) => SecondPage(5.0,5.0,5.0,""),
        "theHomePage" : (context) => HomePage(),
      },
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

