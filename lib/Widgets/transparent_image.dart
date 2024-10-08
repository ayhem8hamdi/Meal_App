import 'package:flutter/material.dart';
import 'package:meal_app/Models/4.2%20meal.dart';
import 'package:transparent_image/transparent_image.dart';

class TrasparentImageWidget extends StatelessWidget {
  const TrasparentImageWidget({
    super.key,
    required this.meal,
    required this.height,
  });

  final Meal meal;
  final double height;

  @override
  Widget build(BuildContext context) {
    return FadeInImage.memoryNetwork(
      height: height,
      width: double.infinity,
      placeholder: kTransparentImage, // Transparent placeholder
      image: meal.imageUrl, // Image from the internet
      fadeInDuration: const Duration(seconds: 1), // Fade-in duration
      fit: BoxFit.fill, // Control how the image fits
    );
  }
}
