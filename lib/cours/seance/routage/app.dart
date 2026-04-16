import 'package:flutter/material.dart';
import 'package:testfluter/cours/seance/routage/pages/home.dart';
import 'package:testfluter/cours/seance/routage/pages/setting.dart';

// nouvelle structre pro

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: MyHomePage(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Technique de la map
      routes: {
        '/': (context) => const MyHomePage(),
        '/setting': (context) => const MySettingPage(),
      },
    );
  }
}


