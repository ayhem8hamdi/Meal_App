import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_app/Cubits/Favourite_meals_cubit/favourite_cubit.dart';
import 'package:meal_app/Models/4.2%20meal.dart';
import 'package:meal_app/Views/categories_screen.dart';
import 'package:meal_app/Widgets/meal_item_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String id = 'homescreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  void selectPage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Meal> fav = BlocProvider.of<FavouriteCubit>(context).favourite;
    return Scaffold(
      body: selectedIndex == 0
          ? const CategoriesScreen()
          : MealItemBuilder(filtredList: fav),
      bottomNavigationBar: BottomNavigationBar(
          onTap: selectPage,
          currentIndex: selectedIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.set_meal), label: 'Categories'),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favourite')
          ]),
    );
  }
}
