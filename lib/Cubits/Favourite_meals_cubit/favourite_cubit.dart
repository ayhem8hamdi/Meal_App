import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_app/Cubits/Favourite_meals_cubit/favourite_cubit_state.dart';
import 'package:meal_app/Models/4.2%20meal.dart';

class FavouriteCubit extends Cubit<FavouriteCubitState> {
  FavouriteCubit() : super(FavouriteCubitState());

  List<Meal> favourite = [];
  void addList(Meal meal) {
    if (favourite.contains(meal) == false) {
      favourite.add(meal);
    }
  }

  void removeList(Meal meal) {
    favourite.remove(meal);
  }
}
