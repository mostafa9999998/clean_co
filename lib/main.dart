import 'package:clean_co/ui_view/before%20login/first%20screen.dart';
import 'package:clean_co/ui_view/before%20login/second%20screen.dart';
import 'package:clean_co/ui_view/before%20login/third%20screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      routes: {
        FirstDemoScreen.FirstDemoScreenname : (_) => FirstDemoScreen(),
        SecondDemoScreen.SecondDemoScreenname : (_) => SecondDemoScreen(),
        ThirdDemoScreen.ThirdDemoScreenname : (_) => ThirdDemoScreen()
      },
      initialRoute: FirstDemoScreen.FirstDemoScreenname,

    );
  }
}


