import 'package:flutter/material.dart';
import 'package:meal_app/Models/4.2%20meal.dart';
import 'package:meal_app/Widgets/print_list_in_ui.dart';
import 'package:meal_app/Widgets/transparent_image.dart';

class DetailsScraanBody extends StatelessWidget {
  const DetailsScraanBody({
    super.key,
    required this.meal,
  });

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          const Padding(
            padding: EdgeInsets.only(left: 18, bottom: 15),
            child: Text(
              'Ingredients :',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          PrintListInUI(list: meal.ingredients),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 18, bottom: 15),
            child: Text(
              'Steps',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          PrintListInUI(list: meal.steps)
        ],
      ),
    );
  }
}
