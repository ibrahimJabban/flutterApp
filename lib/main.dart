import 'package:flutter/material.dart';
import 'app_data.dart';
import 'screens/category_screen_trips.dart';
import 'screens/filters_screen.dart';
import 'screens/trip_detail_screen.dart';
import 'screens/tabs_screen.dart';
import 'models/trip.dart';

// Hauptfunktion der App
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'summer': false,
    'winter': false,
    'family': false,
  };

  List<Trip> _availableTrips = tripsData;
  final List<Trip> _favoriteTrips = [];

  // Methode zum Ändern der Filtereinstellungen
  void _changeFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;

      _availableTrips = tripsData.where((trip) {
        if (_filters['summer'] == true && !trip.isInSummer) {
          return false;
        }
        if (_filters['winter'] == true && !trip.isInWinter) {
                    return false;
        }
        if (_filters['family'] == true && !trip.isForFamilies) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  // Methode zum Verwalten der Favoriten
  void _manageFavorite(String tripId) {
    final existingIndex =
        _favoriteTrips.indexWhere((trip) => trip.id == tripId);
    if (existingIndex >= 0) {
      setState(() {
        _favoriteTrips.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favoriteTrips.add(
          tripsData.firstWhere((trip) => trip.id == tripId),
        );
      });
    }
  }

  // Methode zur Überprüfung, ob eine Reise ein Favorit ist
  bool _isFavorite(String id) {
    return _favoriteTrips.any((trip) => trip.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (ctx) => TabsScreen(favoriteTrips: _favoriteTrips),
        '/category-trips': (ctx) =>
            CategoryTripsScreen(availableTrips: _availableTrips),
        TripDetailScreen.screenRoute: (ctx) => TripDetailScreen(
              manageFavorite: _manageFavorite,
              isFavorite: _isFavorite,
            ),
        FiltersScreen.screenRoute: (ctx) => FiltersScreen(
              currentFilters: _filters,
              saveFilters: _changeFilters,
            ),
      },
    );
  }
}

