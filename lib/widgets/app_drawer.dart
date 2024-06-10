import 'package:flutter/material.dart';
import '../screens/filters_screen.dart';

// Definition des App-Schubfachs (Drawers)
class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  // Helper-Methode zur Erstellung von ListTiles für das Drawer
  Widget buildListTile(String title, IconData icon, Function onTapLink) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
        color: Colors.blue,
      ),
      title: Text(
        title,
      ),
      onTap: () {
        onTapLink();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            padding: const EdgeInsets.only(top: 40),
            alignment: Alignment.center,
            color: Theme.of(context).colorScheme.secondary,
            child: const Text(
              'Deine Reiseleitung',
              style: TextStyle(fontSize: 24),
            ),
          ),
          const SizedBox(height: 20),
          buildListTile('Ausflug', Icons.card_travel, () {
            Navigator.of(context).pushReplacementNamed('/');
          }),
          buildListTile('Sortieren', Icons.filter_list, () {
            Navigator.of(context)
                .pushReplacementNamed(FiltersScreen.screenRoute);
          }),
        ],
      ),
    );
  }
}
