import 'package:flutter/material.dart';
import '../app_data.dart';
import '../widgets/category_item.dart';

// Definition des Bildschirms zur Anzeige der Kategorien
class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App-Bar mit dem Titel "Reiseleitung"
      appBar: AppBar(title: const Text('Reiseleitung')),
      // GridView zur Anzeige der Kategorien
      body: GridView(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200, // Maximale Breite eines Gitters
          childAspectRatio: 7 / 8, // Verhältnis von Breite zu Höhe
          mainAxisSpacing: 10, // Abstand zwischen den Hauptachsen
          crossAxisSpacing: 10, // Abstand zwischen den Querachsen
        ),
        // Umwandlung der Kategorien-Daten in eine Liste von Widgets
        children: categoriesData
            .map((categoryData) => CategoryItem(
                  id: categoryData.id,
                  title: categoryData.title,
                  imageUrl: categoryData.imageUrl,
                ))
            .toList(),
      ),
    );
  }
}
