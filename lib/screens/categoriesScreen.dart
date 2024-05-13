// Import des Material Design-Pakets von Flutter für UI-Elemente
import 'package:flutter/material.dart';
// Import der Datenquelle für die Kategorien, die in dieser Ansicht verwendet werden
import '../app_data.dart';
// Import des Widget-Moduls, das die Darstellung jeder Kategorie handhabt
import '../widgets/category_item.dart';

// Definition der Klasse CategoriesScreen, die von StatelessWidget abgeleitet ist,
// was bedeutet, dass dieses Widget keine interne Zustandsverwaltung hat.
class CategoriesScreen extends StatelessWidget {
  // Überschreiben der build-Methode, die das Aussehen des Widgets definiert
  @override
  Widget build(BuildContext context) {
    // Erstellen eines Scaffold-Widgets, das die grundlegende visuelle Struktur bietet,
    // inklusive einer AppBar und einem Body für Inhalte.
    return Scaffold(
      // Erstellen einer AppBar mit dem Titel 'Reiseleitung'
      appBar: AppBar(title: Text('Reiseleitung')),
      // Der Hauptteil des Scaffold-Widgets, der eine GridView enthält
      body: GridView(
        // Setzen eines Paddings um die GridView
        padding: EdgeInsets.all(10),
        // Festlegen eines gridDelegate, das bestimmt, wie die Elemente angeordnet werden
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,  // Maximale Breite eines jeden Grid-Elements
          childAspectRatio: 7 / 8,  // Seitenverhältnis der Grid-Elemente
          mainAxisSpacing: 10,  // Abstand zwischen den Zeilen
          crossAxisSpacing: 10,  // Abstand zwischen den Spalten
        ),
        // Erstellen der Kinder für die GridView, indem Daten aus Categories_data genutzt werden
        // Jedes Element wird durch den CategoryItem-Constructor dargestellt,
        // dem die notwendigen Daten übergeben werden.
        children: Categories_data.map((categoryData) => 
          CategoryItem(
            categoryData.id, 
            categoryData.title, 
            categoryData.imageUrl
          )).toList(),
      ),
    );
  }
}
