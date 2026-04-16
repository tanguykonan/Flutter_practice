import 'package:flutter/material.dart';

// En flutter le widget row est un widget qui permet d'organiser des éléments horizontalement.
// En claire l'inverse de Column

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
  static String img =
      "https://images.pexels.com/photos/1070534/pexels-photo-1070534.jpeg?cs=srgb&dl=pexels-steve-1070534.jpg&fm=jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Row", textDirection: TextDirection.ltr),
        ),
        elevation: 2,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(Icons.thumb_up),
          Image.network(img, width: 200, height: 200),
          Icon(Icons.thumb_down),
        ],
      ),
    );
  }
}
