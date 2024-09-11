import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_app/Cubits/Favourite_meals_cubit/favourite_cubit.dart';
import 'package:meal_app/Views/categories_screen.dart';
import 'package:meal_app/Views/detail_screen.dart';
import 'package:meal_app/Views/home_screen.dart';

import 'package:meal_app/Views/meal_screen.dart';

void main() {
  runApp(const MealApp());
}

class MealApp extends StatelessWidget {
  const MealApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavouriteCubit(),
      child: MaterialApp(
        routes: {
          MealScreen.id: (context) => const MealScreen(),
          CategoriesScreen.id: (context) => const CategoriesScreen(),
          DetailScreen.id: (context) => const DetailScreen(),
          HomeScreen.id: (context) => const HomeScreen()
        },
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        initialRoute: HomeScreen.id,
      ),
    );
  }
}
