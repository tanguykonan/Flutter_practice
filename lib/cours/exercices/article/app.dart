import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      )
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
  //
  static String img = 'lib/cours/exercices/article/assets/hacker.jpg';
  static String txt = """
  Les méthodes d’analyse orientées objet sont initialement issues des milieux  industriels. La 
  préoccupation dominante de leurs auteurs est le génie logiciel, c’est-à dire les principes et les 
  techniques permettant d’augmenter la rigueur et la qualité quand on construit une application 
  informatique. Initialement, UML(Unified Modeling Language) est le résultat de la fusion de 
  trois méthodes orientées objet.  
  La méthode OOD, object oriented design, de grady booch a été conçu à la demande du 
  ministère de la défense des États-Unis. L’objectif était de préparer de façon rigoureuse la 
  structuration des programmes écrits en langage ADA ou C++.  La méthode OMT object 
  modeling technique de James Rumbaugh en 1996 a été mise au point à général électrique. Ses 
  auteurs ont été largement influencés par les applications  d’informations industrielles 
  (automates ,contrôle de processus ..). En plus des principes des langages à objet, ils ont été 
  inspirés par les techniques de modélisation conceptuelle des méthodes d’analyse des années 
  1980.  
  La méthode OOSE, object oriented software engineering d'IVAR Jacobson en 1993 est 
  d’origine universitaire (informatique temps réel ) et industrielle. Comme OMT, la méthode a 
  emprunté aux méthodes d’analyse antérieures la technique de modélisation conceptuelle, 
  enrichie des aspects comportementaux. Son originalité consiste à faire reposer l’analyse sur 
  l’expression par l’utilisateur de la façon dont il pense utiliser le futur système.  
  Événement considérable et presque miraculeux, les trois "gourous" qui régnaient chacun sur 
  l'une des trois méthodes se mirent d'accord pour définir une méthode commune qui 
  fédérerait leurs apports respectifs (on les surnomme depuis "the Amigos"). C'est de cet effort 
  de convergence qu'est né UML, "Unified Modeling Language", l'adjectif "unified" étant là pour 
  bien marquer qu'UML "unifie" et donc remplace les méthodes antérieures.  
  """;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Article",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
              letterSpacing: 0.2,
            ),
          ),
          centerTitle: true,
          elevation: 2,
          backgroundColor: Colors.blueGrey,
        ),

        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Image(
                image: AssetImage(img),
              ),
            ),
            Container(
              alignment: AlignmentDirectional.topEnd,
              child: Text(
                txt,
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight(300),
                  wordSpacing: 0.5,
                  letterSpacing: 0.2,
                  color: Colors.black,
                ),
              ),
            )
          ],
        )
    );
  }
}
