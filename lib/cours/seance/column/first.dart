import 'package:flutter/material.dart';

// En flutter le widget column est un widget qui va prendre une liste de <wiget enfants> et les
// organiser verticalement


void main() {
  runApp(const MaterialApp(home: HomePage()));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text("Column", textDirection: TextDirection.ltr,)
        ),
        elevation: 2,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start, // Permet de contourner comment les wigets sont affichés (haut/bas/milieu etc..).
        crossAxisAlignment: CrossAxisAlignment.center, // contrôle l'alignement des enfants sur l'absise croissé (gauche, droite, droite, etc..).
        children: [
          Text("text 1"),
          Text("text 2"),
          Image.network("https://images.pexels.com/photos/1070534/pexels-photo-1070534.jpeg?cs=srgb&dl=pexels-steve-1070534.jpg&fm=jpg")
        ], // Liste de Widget.
      ),
    );
  }
}

