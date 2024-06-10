import 'package:flutter_test/flutter_test.dart';
import '../models/category.dart';

void main() {
  test('Category should have an id, title, and imageUrl', () {
    const category = Category(id: 'c1', title: 'Test Category', imageUrl: 'test_url');

    expect(category.id, 'c1');
    expect(category.title, 'Test Category');
    expect(category.imageUrl, 'test_url');
  });
}
