import 'package:flutter/material.dart';
import 'package:meal_app/Models/4.2%20meal.dart';
import 'package:transparent_image/transparent_image.dart';

class MealItem extends StatelessWidget {
  const MealItem({super.key, required this.meal});
  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius:
                  BorderRadius.circular(16), // Clip with border radius
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage, // Transparent placeholder
                image: meal.imageUrl, // Image from the internet
                fadeInDuration: const Duration(seconds: 2), // Fade-in duration
                fit: BoxFit.fill, // Control how the image fits
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10), // Add padding for text
                decoration: const BoxDecoration(
                  color: Colors.black45, // Semi-transparent black background
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      meal.title, // meal title
                      maxLines: 1, // Limit text to one line
                      overflow: TextOverflow.ellipsis, // Handle overflow
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
      ),
    );
  }
}
