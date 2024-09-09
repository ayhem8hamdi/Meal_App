import 'package:flutter/material.dart';
import 'package:meal_app/Models/category_model.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});
  final List<CategoryModel> availableCategories = const [
    CategoryModel(
      id: 'c1',
      title: 'Italian',
      color: Colors.purple,
    ),
    CategoryModel(
      id: 'c2',
      title: 'Quick & Easy',
      color: Colors.red,
    ),
    CategoryModel(
      id: 'c3',
      title: 'Hamburgers',
      color: Colors.orange,
    ),
    CategoryModel(
      id: 'c4',
      title: 'German',
      color: Colors.amber,
    ),
    CategoryModel(
      id: 'c5',
      title: 'Light & Lovely',
      color: Colors.blue,
    ),
    CategoryModel(
      id: 'c6',
      title: 'Exotic',
      color: Colors.green,
    ),
    CategoryModel(
      id: 'c7',
      title: 'Breakfast',
      color: Colors.lightBlue,
    ),
    CategoryModel(
      id: 'c8',
      title: 'Asian',
      color: Colors.lightGreen,
    ),
    CategoryModel(
      id: 'c9',
      title: 'French',
      color: Colors.pink,
    ),
    CategoryModel(
      id: 'c10',
      title: 'Summer',
      color: Colors.teal,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
    );
  }
}
