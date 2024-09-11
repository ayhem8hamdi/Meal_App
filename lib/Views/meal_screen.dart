import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_app/Cubits/Favourite_meals_cubit/favourite_cubit.dart';
import 'package:meal_app/Models/4.2%20meal.dart';
import 'package:meal_app/Models/category_model.dart';
import 'package:meal_app/Widgets/meal_item_builder.dart';

class MealScreen extends StatelessWidget {
  const MealScreen({super.key});
  static String id = 'mealscreen';

  @override
  Widget build(BuildContext context) {
    List<Meal> dummyMeals = BlocProvider.of<FavouriteCubit>(context).dummyMeals;
    CategoryModel cat =
        ModalRoute.of(context)!.settings.arguments as CategoryModel;
    List<Meal> filtredList = dummyMeals
        .where((element) => element.categories.contains(cat.id))
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          cat.title,
          style: const TextStyle(fontSize: 28),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: MealItemBuilder(filtredList: filtredList),
      ),
    );
  }
}
