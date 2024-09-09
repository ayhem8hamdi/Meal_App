import 'package:flutter/material.dart';
import 'package:meal_app/Models/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.cat});
  final CategoryModel cat;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            color: cat.color, borderRadius: BorderRadius.circular(16)),
        child: Center(
            child: Text(
          cat.title,
          style: const TextStyle(color: Colors.white, fontSize: 25),
        )),
      ),
    );
  }
}
