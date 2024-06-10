import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

// Definition des Bildschirms zur Anwendung von Filtern auf die Reisen
class FiltersScreen extends StatefulWidget {
  static const screenRoute = '/filters';

  final Function saveFilters; // Funktion zum Speichern der ausgewählten Filter
  final Map<String, bool> currentFilters; // Aktuelle Filtereinstellungen

  const FiltersScreen({
    super.key,
    required this.currentFilters,
    required this.saveFilters,
  });

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _isInSummer = false; // Filter für Sommerreisen
  var _isInWinter = false; // Filter für Winterreisen
  var _isForFamily = false; // Filter für familienfreundliche Reisen

  @override
  void initState() {
    _isInSummer = widget.currentFilters['summer'] ?? false;
    _isInWinter = widget.currentFilters['winter'] ?? false;
    _isForFamily = widget.currentFilters['family'] ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filter'),
        actions: [
          IconButton(
            onPressed: () {
              final selectedFilters = {
                'summer': _isInSummer,
                'winter': _isInWinter,
                'family': _isForFamily,
              };
              widget.saveFilters(selectedFilters); // Speichern der ausgewählten Filter
            },
            icon: const Icon(Icons.save),
          )
        ],
      ),
      drawer: const AppDrawer(),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Expanded(
            child: ListView(
              children: [
                buildSwitchListTile(
                  'Nur Sommerausflüge',
                  'Nur Sommerausflüge zeigen',
                  _isInSummer,
                  (newValue) {
                    setState(() {
                      _isInSummer = newValue;
                    });
                  },
                ),
                buildSwitchListTile(
                  'Nur Winterausflüge',
                  'Nur Winterausflüge zeigen',
                  _isInWinter,
                  (newValue) {
                    setState(() {
                                            _isInWinter = newValue;
                    });
                  },
                ),
                buildSwitchListTile(
                  'Nur Familienausflüge',
                  'Nur Familienausflüge zeigen',
                  _isForFamily,
                  (newValue) {
                    setState(() {
                      _isForFamily = newValue;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper-Methode zum Erstellen von SwitchListTiles für die Filter
  SwitchListTile buildSwitchListTile(String title, String subtitle,
      bool currentValue, Function(bool) updateValue) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      value: currentValue,
      onChanged: updateValue,
    );
  }
}

