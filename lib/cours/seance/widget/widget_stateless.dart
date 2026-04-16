// Les Widget.

/* Un widget est une classe qui décrit une partie de interface utilisation.
Elle nous permets de préciser que nous souhaitons telle ou telle informations sur
telle partie de notre interface.
*/

// Il plusieurs type de widget parmis lesquelles nous avons:
/*
-- Stateless Widget : Un widget qui ne change pas d'état au cours du temps (Static).
-- Statefull Widget : Un widget  qui change d'état au cours du temps (Dynamic).
*/

import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

// Ici stateless widget car il les données ne changeront pas
class HomePage extends StatelessWidget {
  // La classe StatelessWidget, nous demander de redéfinir la méthode build,
  // qui est responsable de construire l'interface utilisateur du widget.
  const HomePage({super.key});
  @override // La notation @override indique que nous redéfinissons une méthode de la classe parente (StatelessWidget).
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Salut le moob", textDirection: TextDirection.ltr),
    );
  }
}
