import 'package:flutter/material.dart';
import 'package:meal_app/Widgets/category_builder.dart';
import 'package:meal_app/Widgets/main_drawer_screen.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});
  static String id = 'Categoryscreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Categories',
          style: TextStyle(fontSize: 28),
        ),
      ),
      body: const CategoryBuilder(),
      drawer: const MainDrawer(),
      drawerEnableOpenDragGesture: true,
    );
  }
}
