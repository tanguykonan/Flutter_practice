// Importation de la bibliothèque Flutter pour les widgets et les fonctionnalités de base
import 'package:flutter/material.dart';

void main() {
  runApp(
    // Création d'un widget (Center) qui sera affichera au centre de l'écran
    /*
    Center(
      child: Text(
        "Salut les mobs", // Le texte à afficher (vide dans ce cas)
        textDirection:
            TextDirection.ltr, // La direction du texte (de gauche à droite)
      ),
    ),*/
    Center(
      child: Image.network(
        "https://images.pexels.com/photos/1070534/pexels-photo-1070534.jpeg?cs=srgb&dl=pexels-steve-1070534.jpg&fm=jpg",
      ),
    ),
  ); // Démarre l'application Flutter (RunApp est une fonction qui prend un widget et le rend à l'écran)
}

// Text : Est un wiget
// TextDirection : Est une énumération qui définit la direction du texte
// (LTR pour Left to Right, RTL pour Right to Left)
