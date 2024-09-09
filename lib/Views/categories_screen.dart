import 'package:flutter/material.dart';
import 'package:meal_app/Widgets/category_builder.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      body: const CategoryBuilder(),
    );
  }
}
