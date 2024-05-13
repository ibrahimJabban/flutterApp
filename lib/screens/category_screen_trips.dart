import 'package:flutter/material.dart';
import '../widgets/trip_item.dart';
import '../app_data.dart';
class CategoryTripsScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // Safely access settings and cast to Map<String, String>
    final routeArguments = ModalRoute.of(context)?.settings.arguments as Map<String, String>?;
    final categoryId = routeArguments?['id'];
    final categoryTitle = routeArguments?['title'];
    final filteredTrips= Trips_data.where((trip) {
      return trip.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        // Handle the case when categoryTitle is null
        title: Text(categoryTitle ?? 'Default Title'),
      ),
      body: 
      ListView.builder(
        itemBuilder: (ctx, index){
          return TripItem(title: filteredTrips[index].title, imageUrl: filteredTrips[index].imageUrl,
          duration: filteredTrips[index].duration, tripType: filteredTrips[index].tripType, season: filteredTrips[index].season);
        },
        itemCount: filteredTrips.length,
      ),
    );
  }
}
