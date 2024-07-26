import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:roll_dice/fav_place/models/place.dart';
import 'package:roll_dice/fav_place/screens/place_detail.dart';

class PlacesList extends StatelessWidget {
  const PlacesList({super.key, required this.places});

  final List<Place> places;

  @override
  Widget build(BuildContext context) {
    if (places.isEmpty) {
      return Center(
          child: Text(
        "No places!",
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
      ));
    }
    return ListView.builder(
        itemCount: places.length,
        itemBuilder: ((context, index) => ListTile(
              leading: CircleAvatar(
                radius: 26,
                backgroundImage: FileImage(places[index].image),
              ),
              title: Text(
                places[index].title,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        PlaceDetailScreen(place: places[index]),
                  ),
                );
              },
            )));
  }
}