// Import der Material Design-Bibliothek von Flutter.
import 'package:flutter/material.dart';

// Definition einer Klasse 'Category', die als Datenmodell für eine Kategorie dient.
class Category{
  // Deklaration einer finalen und unveränderlichen Variable 'id'. 
  // 'final' bedeutet, dass der Wert der Variable 'id' nach der Initialisierung nicht mehr geändert werden kann.
  final String id;
  
  // Deklaration einer finalen und unveränderlichen Variable 'title'. 
  // Diese Variable speichert den Titel der Kategorie.
  final String title;

  // Deklaration einer finalen und unveränderlichen Variable 'imageUrl'. 
  // Diese Variable speichert den URL-Link zu einem Bild, das die Kategorie visuell repräsentiert.
  final String imageUrl;

  // Konstruktor der Klasse 'Category', der es ermöglicht, ein Objekt von 'Category' zu erstellen.
  // Der Konstruktor erfordert, dass Werte für 'id', 'title' und 'imageUrl' bereitgestellt werden,
  // wenn ein Objekt instanziiert wird, da alle Parameter als 'required' markiert sind.
  // Dies stellt sicher, dass kein Objekt der Klasse 'Category' ohne diese notwendigen Daten erstellt werden kann.
  const Category({required this.id, required this.title, required this.imageUrl});
}
