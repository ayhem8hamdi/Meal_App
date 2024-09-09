import 'package:flutter/material.dart';
import 'package:meal_app/Models/category_model.dart';
import 'package:meal_app/Widgets/category_item.dart';

class CategoryBuilder extends StatelessWidget {
  const CategoryBuilder({
    super.key,
  });

  final List<CategoryModel> availableCategories = const [
    CategoryModel(id: 'c1', title: 'Italian', image: 'Assets/Italianfood.jpg'),
    CategoryModel(
      id: 'c2',
      title: 'Quick & Easy',
      image: 'Assets/quickfood.jpg',
    ),
    CategoryModel(
      id: 'c3',
      title: 'Hamburgers',
      image: 'Assets/Hamburgers.jpg',
    ),
    CategoryModel(
      id: 'c4',
      title: 'German',
      image: 'Assets/GermanFood.jpg',
    ),
    CategoryModel(
      id: 'c5',
      title: 'Light & Lovely',
      image: 'Assets/lightfood.jpg',
    ),
    CategoryModel(
      id: 'c6',
      title: 'Exotic',
      image: 'Assets/ExoticFood.webp',
    ),
    CategoryModel(
      id: 'c7',
      title: 'Breakfast',
      image: 'Assets/BreakFast.webp',
    ),
    CategoryModel(
      id: 'c8',
      title: 'Asian',
      image: 'Assets/AsianFood.webp',
    ),
    CategoryModel(
      id: 'c9',
      title: 'French',
      image: 'Assets/french.webp',
    ),
    CategoryModel(
      id: 'c10',
      title: 'Summer',
      image: 'Assets/Summer.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 1.4),
          itemCount: availableCategories.length,
          itemBuilder: (context, index) =>
              CategoryItem(cat: availableCategories[index])),
    );
  }
}
