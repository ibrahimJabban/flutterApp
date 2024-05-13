// Import von Material Design Widgets aus dem Flutter Framework.
import 'package:flutter/material.dart';
// Import der Kategorienbildschirm-Klasse, die als Hauptbildschirm fungiert.
import 'package:newapp/screens/categoriesScreen.dart';
// Import der Kategorie Trips Bildschirm-Klasse, die für die Darstellung von Trips einer Kategorie zuständig ist.
import './screens/category_screen_trips.dart'; 

// Hauptfunktion von Dart, die die MyApp-Anwendung startet.
void main() {
  runApp(const MyApp());
}

// Definition der MyApp Klasse, die von StatelessWidget erbt.
class MyApp extends StatelessWidget {
  // Konstruktor für die MyApp Klasse mit einem optionalen 'key' Parameter.
  const MyApp({super.key});

  // Überschreibung der build-Methode, die das Aussehen der App definiert.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Demo', // Setzt den Titel der App.
      theme: ThemeData(
        primarySwatch: Colors.blue, // Definiert die Hauptfarbe der App.
      ),
     
      // Definition der Routen der App.
      routes: {
        '/': (ctx) => CategoriesScreen(), // Standardroute zur Anzeige der Hauptkategorie-Seite.
        '/category-trips': (ctx) => CategoryTripsScreen(), // Route zur Anzeige der Trips einer bestimmten Kategorie.
      },
    );
  }
}
