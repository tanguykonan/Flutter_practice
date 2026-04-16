import 'package:flutter/material.dart';

class MySettingPage extends StatefulWidget {
  const MySettingPage({super.key});
  @override
  State<MySettingPage> createState() => _MySettingState(); // Identique à l'ancien
}

class _MySettingState extends State<MySettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Center(child: Text("SETTING PAGE"),),
        elevation: 2,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              Navigator.pop(context); // On utilise les context (qui represente la page actuelle) pour retourner via .pop
            },
            child: Text("Go on the home page")),
      ),
    );
  }
}