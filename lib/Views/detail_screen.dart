import 'package:flutter/material.dart';
import 'package:meal_app/Models/4.2%20meal.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});
  static String id = 'DetailScreen';

  @override
  Widget build(BuildContext context) {
    Meal meal = ModalRoute.of(context)!.settings.arguments as Meal;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          meal.title,
          style: const TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}
