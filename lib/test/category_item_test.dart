import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../widgets/category_item.dart';

void main() {
  testWidgets('CategoryItem displays correctly', (WidgetTester tester) async {
    const categoryItem = CategoryItem(
      id: 'c1',
      title: 'Bergen',
      imageUrl: 'android/assets/a.avif',
    );

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: categoryItem,
        ),
      ),
    );

    // Überprüfen, ob der Titel des Kategorie-Items angezeigt wird
    expect(find.text('Bergen'), findsOneWidget);

    // Überprüfen, ob das Bild angezeigt wird
    final imageFinder = find.byType(Image);
    expect(imageFinder, findsOneWidget);
  });
}
