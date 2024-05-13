import 'package:flutter/material.dart';
import '../models/trip.dart';

class TripItem extends StatelessWidget {
  // Felder der Klasse, die die erforderlichen Daten für jedes Reiseelement enthalten.
  final String title;       // Titel der Reise
  final String imageUrl;    // URL des Bildes, das die Reise repräsentiert
  final int duration;       // Dauer der Reise in Tagen
  final TripType tripType;  // Typ der Reise, definiert durch die Enum 'TripType'
  final Season season;      // Saison, in der die Reise stattfindet, definiert durch die Enum 'Season'

  // Konstruktor für TripItem, alle Parameter sind erforderlich und müssen beim Erstellen einer Instanz angegeben werden.
  TripItem({
    required this.title,
    required this.imageUrl,
    required this.duration,
    required this.tripType,
    required this.season,
  });

  // Methode, die aufgerufen wird, wenn auf das Reiseelement getippt wird.
  void selectTrip() {
    // Derzeit leer, hier könnten Navigation oder andere Interaktionen implementiert werden.
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectTrip,  // Event Handler für Tippen auf das Element
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15), // Runde Ecken für das Karten-Widget
        ),
        elevation: 7, // Schattentiefe der Karte
        margin: EdgeInsets.all(10), // Außenabstand um die Karte
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover, // Bild wird zugeschnitten, um in den Container zu passen
                  ),
                ),
                // Weitere Widgets könnten hier hinzugefügt werden, um weitere Informationen anzuzeigen.
              ],
            ),
          ],
        ),
      ),
    );
  }
}
