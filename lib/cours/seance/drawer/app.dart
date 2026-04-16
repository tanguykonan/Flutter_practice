import 'package:flutter/material.dart';
// AppBar : LE MENU DRAWER
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
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text("Menu")
            ),

            // Créer des élements de menu cliquable
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Paramètres"),
              subtitle: Text("Page de paramètre"),
              trailing: Icon(Icons.chevron_right),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("Profile"),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Help"),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.close),
              title: Text("Quit"),
              onTap: (){},
            ),

          ],
        ),
      ),
      body: Center(
        child: Text("APPBAR"),
      ),
    );
  }
}
