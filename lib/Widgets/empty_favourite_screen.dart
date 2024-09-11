import 'package:flutter/material.dart';

class EmptyFavouriteScreen extends StatelessWidget {
  const EmptyFavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          "You haven't added any favorite meals yet ! Explore and find some delicious meals to add to your favorites.",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 28,
            color: Colors.grey, // Adjust based on your app's theme
          ),
        ),
      ),
    );
  }
}
