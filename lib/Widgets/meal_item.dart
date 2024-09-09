import 'package:flutter/material.dart';
import 'package:meal_app/Models/4.2%20meal.dart';

class MealItem extends StatelessWidget {
  const MealItem({super.key, required this.meal});
  final Meal meal;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(meal.title),
    );
  }
}
