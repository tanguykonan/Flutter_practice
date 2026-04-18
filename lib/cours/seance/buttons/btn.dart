import 'package:flutter/material.dart';
// Les boutons:
// - avec elevation
// - avec texte
// - avec contours
// - avec les icones
// - les flottants

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), // Définir une couleur par défaut (Boutton etc..)
        //scaffoldBackgroundColor: Colors.white, // (Fond par defaut scafflold)
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

//  Les bouton avec élévation
/*
Un boutton avec elevation est un boutoon qui a l'ombre, il crée une distinction entre lui et l'arrère plan
Il est donc élevé sur le fond.
*/
class HomePageState extends State<HomePage> {
  Color bg = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            bg = Colors.blue;
          });
        },
        elevation: 5, // Modif elevation (ombre)
        backgroundColor: Colors.blue, // background du bouton
        foregroundColor: Colors.black, // Couleur de l'élément du boutton
        child: Icon(Icons.change_circle_outlined),
      ),
      //==========================================================================
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                bg = Colors.orange;
              });
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 2,
              padding: EdgeInsets.all(0),
              backgroundColor: Colors.orange,
            ),
            child: Text("ElevatedButton"),
          ), // Elevation
          // ======================================================================
          OutlinedButton(
              onPressed: () {
                setState(() {
                  bg = Colors.red;
                });
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: Text("OutlinedButton")), // Contour
          //======================================================================
          TextButton(
              onPressed: () {
                setState(() {
                  bg = Colors.green;
                });
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: Text("TextButton")
          ), // Text Bouton
          //======================================================================
          IconButton(
              onPressed: (){
                setState(() {
                  bg = Colors.yellow;
                });
              },
              style: IconButton.styleFrom(
                backgroundColor: Colors.yellow,
              ),
              icon: Icon(Icons.home)
          ), // Icon button
        ],
      ),
    );
  }
}
