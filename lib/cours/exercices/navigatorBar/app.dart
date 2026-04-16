import 'package:flutter/material.dart';
import 'package:testfluter/cours/exercices/navigatorBar/pages/call.dart';
import 'package:testfluter/cours/exercices/navigatorBar/pages/actus.dart';
import 'package:testfluter/cours/exercices/navigatorBar/pages/discu.dart';
import 'package:testfluter/cours/exercices/navigatorBar/pages/commu.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      colorSchemeSeed: Colors.green,
      scaffoldBackgroundColor: Colors.white,
    ),
    home: const HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  final pages = [
    DiscussionPage(),
    ActusPage(),
    CommunityPage(),
    CallPage(),
  ];
  int indexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[indexPage],
      bottomNavigationBar: Container (
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(top:
            BorderSide(color: Colors.grey, width: 0.1)
            ),
          ),
          child: NavigationBar(
            elevation: 3,
            selectedIndex: indexPage,
            onDestinationSelected: (int index) {
              setState(() {
                indexPage = index;
              });
            },
            backgroundColor: Colors.white,
            destinations: [
              NavigationDestination(icon: Icon(Icons.message), label: "Discussion"),
              NavigationDestination(icon: Icon(Icons.filter_tilt_shift), label: "Actus"),
              NavigationDestination(icon: Icon(Icons.group), label: "Community"),
              NavigationDestination(icon: Icon(Icons.call), label: "Call"),
            ],
          )
      ),
    );
  }
}
