import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(home: HomePage()),
  ); // Ici, nous avons utilisé MaterialApp pour appliquer le thème Material Design à notre application.
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Material Design')),
        elevation:
        2, //``elevation`` est une propriété qui contrôle la profondeur de l'ombre projetée par le widget. Plus la valeur est élevée, plus l'ombre est prononcée, donnant ainsi une impression de profondeur.
      ),
      body: Center(
        child: Text(
          'Bienvenue dans l\'univers de Material Design !',
          textDirection: TextDirection.ltr,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
    ); // Scaffold est un widget de base pour la structure visuelle d'une page dans une application Material Design.
    // Le Scaffold fournit une structure de base pour la mise en page de l'application, y compris des éléments tels que l'AppBar, le Drawer, le BottomNavigationBar, etc.
  }
}
