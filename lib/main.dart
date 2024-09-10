import 'package:flutter/material.dart';
import 'package:meal_app/Views/categories_screen.dart';
import 'package:meal_app/Views/detail_screen.dart';

import 'package:meal_app/Views/meal_screen.dart';

void main() {
  runApp(const MealApp());
}

class MealApp extends StatelessWidget {
  const MealApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        MealScreen.id: (context) => const MealScreen(),
        CategoriesScreen.id: (context) => const CategoriesScreen(),
        DetailScreen.id: (context) => const DetailScreen()
      },
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      initialRoute: CategoriesScreen.id,
    );
  }
}
