import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(home: HomePage()),
  ); // Ici, nous avons utilisé MaterialApp pour appliquer le thème Material Design à notre application.
}

// Avec les stateful widget, nous utilisons : createSate a la place de la methode build.
// Le type de retour n'est donc plus Widget mais Sate (Qui symbolyse un état).
// Précicer le type d'état. (EX: dans notre, il s'agit d'un State de type <HomePage>

// Notre classe qui retourne la page depuis HomePageState
class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

// Ici, notre page dynamic qui retourne notre Widget en tant que StatefulWidget
// grace a sa classe parente <HomePage>
class HomePageState extends State<HomePage> {
  int counter = 0;

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
          'Le compteur est à: $counter',
          textDirection: TextDirection.ltr,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
                () {
              counter++;
            },
          ); // La methode setState(() {}), va permet de recontruire notre page apres un chnagement d'information.
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
