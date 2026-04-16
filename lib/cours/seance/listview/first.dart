import 'package:flutter/material.dart';

// Les ListView: Est un widget qui permet d'avoir une liste de widget defilabe

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
  static String img = "https://images.pexels.com/photos/1070534/pexels-photo-1070534.jpeg?cs=srgb&dl=pexels-steve-1070534.jpg&fm=jpg";
  late List images = [img, img, img];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("ListView")),
        elevation: 2,
      ),
      body: ListView.separated(  // ListView.builder: tres utile pour charger les données en continue (pacourrir une liste de widget), plustot que demettre les widget directement dans "children" avec ListView (ce qui rend les modification trop generique)
        itemCount: images.length, // va répéter l'affichage de du widget un certains nombre de fois
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.lightBlue,
            ),
            child: Column(
              children: [Image.network(images[index]),],
            ),
          );
        },
        separatorBuilder: (context, index){ // methode utilisable sur ListView.separated
          return const Divider(); // ici on applique des séparateur vertical sur notre liste de widget
        },
        scrollDirection: Axis.vertical, // Permet de définir la direction de d'filement (verticale / horizontal)
      ),
    );
  }
}
