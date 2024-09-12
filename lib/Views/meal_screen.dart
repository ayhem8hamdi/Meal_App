import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_app/Cubits/Favourite_meals_cubit/favourite_cubit.dart';
import 'package:meal_app/Cubits/Favourite_meals_cubit/favourite_cubit_state.dart';
import 'package:meal_app/Models/4.2%20meal.dart';
import 'package:meal_app/Models/category_model.dart';
import 'package:meal_app/Widgets/meal_item_builder.dart';

class MealScreen extends StatelessWidget {
  const MealScreen({super.key});
  static String id = 'mealscreen';

  @override
  Widget build(BuildContext context) {
    final CategoryModel cat =
        ModalRoute.of(context)!.settings.arguments as CategoryModel;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          cat.title,
          style: const TextStyle(fontSize: 28),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        // Use BlocBuilder to rebuild the UI when the cubit state changes
        child: BlocBuilder<FavouriteCubit, FavouriteCubitState>(
          builder: (context, state) {
            final meals = state is SpcficState
                ? BlocProvider.of<FavouriteCubit>(context).specefic
                : BlocProvider.of<FavouriteCubit>(context).dummyMeals;

            final List<Meal> filteredList = meals
                .where((meal) => meal.categories.contains(cat.id))
                .toList();

            if (filteredList.isEmpty) {
              return const Center(
                child: Text('No meals found for this category!'),
              );
            }

            // Display the filtered meals using MealItemBuilder
            return MealItemBuilder(filtredList: filteredList);
          },
        ),
      ),
    );
  }
}
