import 'package:flutter/material.dart';
import '../models/trip.dart';
import '../widgets/trip_item.dart';

// Definition des Bildschirms zur Anzeige der Reisen einer Kategorie
class CategoryTripsScreen extends StatefulWidget {
  final List<Trip> availableTrips;

  const CategoryTripsScreen({super.key, required this.availableTrips});

  @override
  State<CategoryTripsScreen> createState() => _CategoryTripsScreenState();
}

class _CategoryTripsScreenState extends State<CategoryTripsScreen> {
  late String categoryTitle; // Titel der ausgewählten Kategorie
  late List<Trip> displayTrips; // Liste der Reisen, die in der Kategorie angezeigt werden

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final routeArguments = ModalRoute.of(context)?.settings.arguments;

    if (routeArguments is Map<String, String>) {
      final categoryId = routeArguments['id'];
      categoryTitle = routeArguments['title'] ?? 'Default Title';
      // Filtern der verfügbaren Reisen basierend auf der Kategorie-ID
      displayTrips = widget.availableTrips.where((trip) {
        return trip.categories.contains(categoryId);
      }).toList();
    } else {
      categoryTitle = 'Unknown Category';
      displayTrips = [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle), // Anzeigen des Titels der Kategorie
      ),
      // ListView zur Anzeige der Reisen in der Kategorie
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return TripItem(
            id: displayTrips[index].id,
            title: displayTrips[index].title,
            imageUrl: displayTrips[index].imageUrl,
            duration: displayTrips[index].duration,
            tripType: displayTrips[index].tripType,
            season: displayTrips[index].season,
          );
        },
        itemCount: displayTrips.length, // Anzahl der anzuzeigenden Reisen
      ),
    );
  }
}
