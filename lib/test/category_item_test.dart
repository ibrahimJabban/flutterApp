import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../widgets/category_item.dart';

void main() {
  testWidgets('CategoryItem displays correct title and image', (WidgetTester tester) async {
    const categoryItem = CategoryItem(
      id: 'c1',
      title: 'Test Category',
      imageUrl: 'android/assets/a.avif',
    );

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: categoryItem,
        ),
      ),
    );

    expect(find.text('Test Category'), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);
  });
}
