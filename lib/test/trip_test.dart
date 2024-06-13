import 'package:flutter_test/flutter_test.dart';
import '../models/trip.dart';

void main() {
  group('Trip Model Tests', () {
    test('Trip should contain correct data', () {
      const trip = Trip(
        id: 'm1',
        categories: ['c1'],
        title: 'Die Alpen',
        tripType: TripType.exploration,
        season: Season.winter,
        imageUrl: 'android/assets/g.avif',
        duration: 20,
        activities: ['Besuch von archäologischen Stätten', 'Stadtrundgang'],
        program: ['Tag 1: Ankunft', 'Tag 2: Stadtrundgang'],
        isForFamilies: true,
        isInSummer: false,
        isInWinter: true,
      );

      expect(trip.id, 'm1');
      expect(trip.title, 'Die Alpen');
      expect(trip.tripType, TripType.exploration);
      expect(trip.season, Season.winter);
      expect(trip.isForFamilies, true);
    });
  });
}
