import 'package:flutter/material.dart';
import '../widgets/trip_item.dart';
import '../models/trip.dart';

// Definition des Bildschirms zur Anzeige der Favoritenreisen
class FavoritesScreen extends StatelessWidget {
  final List<Trip> favoriteTrips;

  const FavoritesScreen({super.key, required this.favoriteTrips});

  @override
  Widget build(BuildContext context) {
    // Überprüfen, ob Favoritenreisen vorhanden sind
    if (favoriteTrips.isEmpty) {
      return const Center(
        child: Text('Du hast bis jetzt keine Trips markiert'), // Meldung, wenn keine Favoriten vorhanden sind
      );
    } else {
      // ListView zur Anzeige der Favoritenreisen
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return TripItem(
            id: favoriteTrips[index].id,
            title: favoriteTrips[index].title,
            imageUrl: favoriteTrips[index].imageUrl,
            duration: favoriteTrips[index].duration,
            tripType: favoriteTrips[index].tripType,
            season: favoriteTrips[index].season,
          );
        },
        itemCount: favoriteTrips.length, // Anzahl der anzuzeigenden Favoritenreisen
      );
    }
  }
}