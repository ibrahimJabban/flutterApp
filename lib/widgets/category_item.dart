// Import des Material Design-Pakets von Flutter für UI-Elemente
import 'package:flutter/material.dart';
// Import der Bildschirmseite, die spezifische Trips für eine Kategorie anzeigt
import '../screens/category_screen_trips.dart';

// Definition der Klasse CategoryItem, die von StatelessWidget abgeleitet ist
class CategoryItem extends StatelessWidget {
  // Definition der Eigenschaften des CategoryItem
  final String id;
  final String title;
  final String imageUrl;

  // Konstruktor für CategoryItem, der die id, den Titel und das Bild-URL erwartet
  CategoryItem(this.id, this.title, this.imageUrl);

  // Methode, die aufgerufen wird, wenn das Kategorie-Element ausgewählt wird
  void selectCategory(BuildContext context) {
    // Verwendung des Navigator-Objekts von Flutter, um zur nächsten Seite zu navigieren
    Navigator.of(context).pushNamed(
     '/category-trips',  // Die Route, zu der navigiert werden soll
     arguments: {        // Übergabe von Argumenten, die die ID und den Titel der Kategorie enthalten
      'id': id,
      'title': title,
     }
    );
  }

  // Überschreiben der build-Methode, die das Aussehen des Widgets definiert
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),  // Führt die selectCategory-Methode beim Tippen aus
      splashColor: Theme.of(context).primaryColor,  // Farbe des Wasserfleck-Effekts beim Tippen
      borderRadius: BorderRadius.circular(15),  // Rundet die Ecken des InkWell-Widgets
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),  // Rundet die Ecken des Bildes
            child: Image.network(
              imageUrl,
              height: 250,
              fit: BoxFit.cover,  // Sorgt dafür, dass das Bild die gesamte Fläche abdeckt
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.4),  // Halbtransparenter schwarzer Hintergrund für den Text
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,  // Weißer Text für bessere Lesbarkeit auf dunklem Hintergrund
              ),
            ),
          ),
        ],
      ),
    );
  }
}
