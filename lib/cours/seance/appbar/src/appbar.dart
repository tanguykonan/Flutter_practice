import 'package:flutter/material.dart';
// AppBar : LE MENU DRAWER
// Un pannau qui glisse pour presenter plus d'options
//
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
  static String img = 'lib/cours/exercices/article/assets/hacker.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary, // Couleur relatif a celle definir dans notre ThemeData
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.menu),
        ), // Icon menu
        title: Text("Telegram"), // titre
        elevation: 2, // elevation
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.search)
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
        ],
      ),
      body: Center(
        child: Text("APPBAR"),
      ),
    );
  }
}
