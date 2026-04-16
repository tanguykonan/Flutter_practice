import 'package:flutter/material.dart';

class MyFieldPage extends StatefulWidget {
  const MyFieldPage({super.key});
  @override
  State<MyFieldPage> createState() => _MyFieldPageState();
}

class _MyFieldPageState extends State<MyFieldPage> {

  String email = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("TEXT FIELD"),),
        elevation: 18.0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20), //
        children: [
          Text(email),
          TextField(
            //keyboardType: TextInputType.numberWithOptions(),
            decoration: InputDecoration(
              hintText: "votrenom@email.com", // Disparait a l'input
              labelText: "Email",
              prefixIcon: Icon(Icons.email), // Icone du champ
              border: OutlineInputBorder(), // Bordure automatique
              helperText: "Votre email est votre principale clé d'accès", // Text en bas du field
              filled: true, // (1)
              //fillColor: Colors.lightBlue, // (2) Changer background du champ de saisie
              enabled: true, // (false) Empeche d'entrer des information utiliser pour la validation des formulaire.
            ),
            // Réccupérrer la valeur
            onChanged: (String value){
              setState(() {
                email = value;
              });
            },
          )
        ],
      )
    );
  }
}