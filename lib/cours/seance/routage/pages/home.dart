import 'package:flutter/material.dart';
//import 'package:testfluter/cours/seance/routage/pages/setting.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState(); // Identique à l'ancien
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Center(child: Text("HOME PAGE"),),
        elevation: 2,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              //==========================
              /* Methode sans les routes
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) {
                        return const MySettingPage();
                      }
                  )
                  // route : le widget vers lequel il faudra partir --> le chemin
              );//
              */
              //==================================================================
              Navigator.pushNamed(
                  context,
                  '/setting'
              ); // Aventage: Evite de rappeller la class chaque fois
            },
            child: Text("Go on the setting page")
        ),
      ),
    );
  }
}