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
        //======================================
        /*
        leading: IconButton(
            onPressed: (){},
            icon: Icon(Icons.menu),
        ), // Icon menu
        */ // On utilise plus tôt "drawer" qui fait le systeme automatiquement
        //=======================================
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
      // ================================= Le MENU DRAWER
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Center(
                child: CircleAvatar(
                  radius: 60,
                  child: ClipOval(
                    child: Image.asset(
                      img,
                      fit: BoxFit.cover,
                      height: 120,
                      width: 120,
                    ),
                  ),
                ),
              ),
            ), // Entête du drawer
            // =============================================
            // ListTitle ==> Utilisé pour créer des element de menu cliquables
            ListTile(
              leading: Icon(Icons.account_box), // widget qui vient avant le titre
              title: Text("Profil"), // titre
              subtitle: Text("Sous titre"),
              trailing: Icon(Icons.chevron_right), // Element a droite (Une icone par ex)
              onTap: (){}, // Fonction
            ),
            ListTile(
              leading: Icon(Icons.dashboard_customize),
              title: Text("Customize"),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Help"),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: (){},
            ),
          ],
        ),
      ),
      //==================================
      body: Center(
        child: Text("APPBAR"),
      ),
    );
  }
}
