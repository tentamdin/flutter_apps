import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:roll_dice/fav_place/models/place.dart";

class UserPlaceNotifier extends StateNotifier<List<Place>> {
  UserPlaceNotifier() : super(const []);

  void addPlace(String title) {
    var newPlace = Place(title: title);
    state = [newPlace, ...state];
  }
}

final userPlaceProvider = StateNotifierProvider(
  (ref) => UserPlaceNotifier(),
);
