import 'package:flutter/material.dart';
import 'package:routing_flutter/first_page.dart';
import 'package:routing_flutter/main_page.dart';
import 'package:routing_flutter/second_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => MainPage(),
        '/ind':(context)=> FirstPage(),
        '/snd':(context) => SecondPage(),
      },
    );
  }
}
