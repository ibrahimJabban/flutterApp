import 'package:flutter/material.dart';
import '../app_data.dart';

// Definition des Bildschirms zur Anzeige der Details einer Reise
class TripDetailScreen extends StatelessWidget {
  static const screenRoute = '/trip-detail';

  final Function manageFavorite; // Funktion zum Verwalten der Favoriten
  final Function isFavorite; // Funktion zur Überprüfung, ob eine Reise ein Favorit ist

  const TripDetailScreen({
    super.key, 
    required this.manageFavorite, 
    required this.isFavorite
  });

  @override
  Widget build(BuildContext context) {
    final routeArguments = ModalRoute.of(context)?.settings.arguments;

    if (routeArguments is Map<String, String>) {
      final tripId = routeArguments['id']!;
      final selectedTrip = tripsData.firstWhere((trip) => trip.id == tripId);

      return Scaffold(
        appBar: AppBar(
          title: Text(selectedTrip.title), // Anzeigen des Titels der Reise
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Bild der Reise
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Image.asset(
                  selectedTrip.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10),
              buildSectionTitle(context, 'Aktivitäten'),
              buildListViewContainer(
                ListView.builder(
                  itemCount: selectedTrip.activities.length,
                  itemBuilder: (ctx, index) => Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      child: Text(selectedTrip.activities[index]),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              buildSectionTitle(context, 'Tagesprogramm'),
              buildListViewContainer(
                ListView.builder(
                  itemCount: selectedTrip.program.length,
                  itemBuilder: (ctx, index) => Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          radius: 20,
                          child: FittedBox(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Tag ${index + 1}',
                                style: const TextStyle(fontSize: 12),
                              ),
                            ),
                          ),
                        ),
                        title: Text(selectedTrip.program[index]),
                      ),
                      const Divider(),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(isFavorite(tripId) ? Icons.star : Icons.star_border),
          onPressed: () => manageFavorite(tripId), // Verwalten der Favoriten beim Drücken
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text('No trip selected'),
        ),
        body: const Center(
          child: Text('No trip selected'),
        ),
      );
    }
  }

  // Methode zur Erstellung des Abschnittstitels
  Widget buildSectionTitle(BuildContext context, String titleText) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      alignment: Alignment.topLeft,
      child: Text(
        titleText,
        style: Theme.of(context).textTheme.headlineSmall,
      ),
    );
  }

  // Methode zur Erstellung eines Containers für ListViews
  Widget buildListViewContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 200,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: child,
    );
  }
}
