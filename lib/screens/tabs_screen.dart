import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';
import 'categories_screen.dart';
import 'favorites_screen.dart';
import '../models/trip.dart';

// Definition des Tabs-Bildschirms zur Anzeige der Kategorien und Favoriten
class TabsScreen extends StatefulWidget {
  final List<Trip> favoriteTrips;

  const TabsScreen({super.key, required this.favoriteTrips});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedScreenIndex = 0; // Index des aktuell ausgewählten Tabs
  late List<Map<String, dynamic>> _screens; // Liste der anzuzeigenden Bildschirme und deren Titel

  @override
  void initState() {
    _screens = [
      {
        'Screen': const CategoriesScreen(),
        'Title': 'Kategorien',
      },
      {
        'Screen': FavoritesScreen(favoriteTrips: widget.favoriteTrips),
        'Title': 'Favoriten',
      },
    ];
    super.initState();
  }

  // Methode zur Auswahl eines Tabs und Aktualisierung des Index
  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screens[_selectedScreenIndex]['Title'] as String),
      ),
      drawer: const AppDrawer(),
      body: _screens[_selectedScreenIndex]['Screen'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedScreenIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Kategorien',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favoriten',
          ),
        ],
      ),
    );
  }
}
