import 'package:flutter/material.dart';
import 'package:meal_app/Models/4.2%20meal.dart';
import 'package:meal_app/Widgets/transparent_image.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: TrasparentImageWidget(
                  meal: meal,
                  height: 300,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Ingredients',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: meal.ingredients
                    .map((ingredient) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Text(
                            '- $ingredient',
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 21),
                          ),
                        ))
                    .toList(),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Steps',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: meal.steps
                    .map((step) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            '- $step',
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 21),
                          ),
                        ))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
