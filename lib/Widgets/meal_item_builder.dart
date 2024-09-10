import 'package:flutter/material.dart';
import 'package:meal_app/Models/4.2%20meal.dart';
import 'package:meal_app/Widgets/meal_item.dart';

class MealItemBuilder extends StatelessWidget {
  const MealItemBuilder({
    super.key,
    required this.filtredList,
  });

  final List<Meal> filtredList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: filtredList.length,
        itemBuilder: (context, index) {
          return MealItem(
            meal: filtredList[index],
          );
        });
  }
}
