import 'package:flutter/material.dart';

// Definition eines Widgets zur Darstellung einer Kategorie
class CategoryItem extends StatelessWidget {
  final String id; // Eindeutige Kennung der Kategorie
  final String title; // Titel der Kategorie
  final String imageUrl; // URL des Bildes der Kategorie

  const CategoryItem({
    super.key,
    required this.id,
    required this.title,
    required this.imageUrl,
  });

  // Methode zur Navigation bei Auswahl einer Kategorie
  void selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      '/category-trips',
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              imageUrl,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
                        decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.4),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

