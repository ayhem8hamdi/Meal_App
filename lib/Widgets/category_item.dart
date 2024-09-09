import 'package:flutter/material.dart';
import 'package:meal_app/Models/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.cat});
  final CategoryModel cat;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: cat.color,
      child: Text(cat.title),
    );
  }
}
