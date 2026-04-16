// Les container
import 'package:flutter/material.dart';

/*  UN CONTAINER / CONTENEUR

C'est un widgetn qui permet de créer un élément visuel rectangulaire comme une <div> en html.
il:
  - être décorer avec une couleur, une bordure ou une ombre. etc
*/

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
        title: const Center(child: Text("Container")),
        elevation: 5,
        backgroundColor: Colors.white,
      ),
      body: Container(
        alignment: Alignment.center,
        //color: Colors.lightBlue, // Couleur de l'intérieur du conteneur (à mettre dans la decoration si elle est présente)
        padding: EdgeInsets.all(20), // Padding.only pour préciser.
        margin: EdgeInsets.all(20), // Même système que padding
        height: 200, // Hauteur du conteneur en pixels
        width: 450, // Largeur du conteneur en pixels
        // Les bordures
        decoration: BoxDecoration(
            color: Colors.lightBlue,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Text("Container", textDirection: TextDirection.ltr),
      ),
    );
  }
}
