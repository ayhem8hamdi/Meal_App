import 'package:flutter/material.dart';
import 'package:meal_app/Methodes/get_enum_value.dart';
import 'package:meal_app/Models/4.2%20meal.dart';

class MealItemFooter extends StatelessWidget {
  const MealItemFooter({super.key, required this.meal});
  final Meal meal;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.09),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Icon(Icons.schedule, color: Colors.white),
          const SizedBox(width: 5),
          Text('${meal.duration} min',
              style: const TextStyle(color: Colors.white, fontSize: 18)),
          const Spacer(),
          const Icon(Icons.work, color: Colors.white),
          Text(getComplexityEnum(meal.complexity),
              style: const TextStyle(color: Colors.white, fontSize: 18)),
          const Spacer(),
          const Icon(Icons.attach_money, color: Colors.white),
          Text(getComplexityEnum(meal.affordability),
              style: const TextStyle(color: Colors.white, fontSize: 18)),
        ],
      ),
    );
  }
}
