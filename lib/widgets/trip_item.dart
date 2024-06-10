import 'package:flutter/material.dart';
import '../models/trip.dart';
import '../screens/trip_detail_screen.dart';

// Definition eines Widgets zur Darstellung einer Reise
class TripItem extends StatelessWidget {
  final String id; // Eindeutige Kennung der Reise
  final String title; // Titel der Reise
  final String imageUrl; // URL des Bildes der Reise
  final int duration; // Dauer der Reise in Tagen
  final TripType tripType; // Art der Reise
  final Season season; // Jahreszeit der Reise

  const TripItem({
    super.key,
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.duration,
    required this.tripType,
    required this.season,
  });

  // Methode zur Umwandlung der Jahreszeit in einen Text
  String get seasonText {
    switch (season) {
      case Season.winter:
        return 'Winter';
      case Season.spring:
        return 'Frühling';
      case Season.autmun:
        return 'Herbst';
      case Season.summer:
        return 'Sommer';
      default:
        return 'Unknown';
    }
  }

  // Methode zur Umwandlung der Reiseart in einen Text
  String get tripTypeText {
    switch (tripType) {
      case TripType.exploration:
        return 'Exploration';
      case TripType.recovery:
        return 'Erholung';
      case TripType.activities:
        return 'Aktivitäten';
      case TripType.therapy:
        return 'Therapie';
      default:
        return 'Unknown';
    }
  }

  // Methode zur Navigation bei Auswahl einer Reise
  void selectTrip(BuildContext context) {
    Navigator.of(context).pushNamed(
      TripDetailScreen.screenRoute,
      arguments: {'id': id},
    ).then((result) {
      if (result != null) {
        // Hier kann zusätzliche Logik hinzugefügt werden, falls nötig
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectTrip(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 7,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: imageUrl.startsWith('android/assets/')
                      ? Image.asset(
                          imageUrl,
                          height: 250,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        )
                      : Image.network(
                          imageUrl,
                          height: 250,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                ),
                Container(
                  height: 250,
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(0.8),
                      ],
                    ),
                  ),
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: Colors.white,
                        ),
                    overflow: TextOverflow.fade,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.today,
                          color: Theme.of(context).colorScheme.secondary),
                      const SizedBox(width: 6),
                      Text('$duration Tagen'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.wb_sunny,
                          color: Theme.of(context).colorScheme.secondary),
                      const SizedBox(width: 6),
                      Text(seasonText),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.family_restroom,
                          color: Theme.of(context).colorScheme.secondary),
                      const SizedBox(width: 6),
                      Text(tripTypeText),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
