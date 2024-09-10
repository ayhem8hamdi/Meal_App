import 'package:flutter/material.dart';
import 'package:meal_app/Models/4.2%20meal.dart';
import 'package:meal_app/Widgets/meal_item_footer.dart';
import 'package:transparent_image/transparent_image.dart';

class MealItem extends StatelessWidget {
  const MealItem({super.key, required this.meal});
  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Card(
          elevation: 7,
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight:
                            Radius.circular(16)), // Clip with border radius
                    child: FadeInImage.memoryNetwork(
                      height: 210,
                      width: double.infinity,
                      placeholder: kTransparentImage, // Transparent placeholder
                      image: meal.imageUrl, // Image from the internet
                      fadeInDuration:
                          const Duration(seconds: 2), // Fade-in duration
                      fit: BoxFit.fitWidth, // Control how the image fits
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Colors.black45,
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 6),
                          child: Text(
                            meal.title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                            style: const TextStyle(
                              shadows: [
                                Shadow(
                                  blurRadius: 6.0,
                                  color: Colors.grey, // Text shadow
                                  offset: Offset(1.5, 1.5),
                                ),
                              ],
                              fontWeight: FontWeight.bold,
                              fontSize: 27,
                              color: Colors
                                  .white, // Set text color to white for contrast
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              MealItemFooter(
                meal: meal,
              )
            ],
          ),
        ),
      ),
    );
  }
}
