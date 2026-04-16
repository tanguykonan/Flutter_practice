import 'package:flutter/material.dart';
// AppBar
// Widget permet d'afficher le menu, du texte et les actions importante de l'app

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
        scaffoldBackgroundColor: Colors.white,
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

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary, // Couleur relatif a celle definir dans notre ThemeData
        leading: Icon(Icons.menu), // Icon menu
        title: Text("Telegram"), // titre
        elevation: 2, // elevation
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.search)
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
        ], // Listes de widgets (De boutons etc..) affichés de la droite à la gauche
      ),
      body: Center(
        child: Text("APPBAR"),
      ),
    );
  }
}
