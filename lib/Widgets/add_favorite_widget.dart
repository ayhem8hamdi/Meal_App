import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_app/Cubits/Favourite_meals_cubit/favourite_cubit.dart';
import 'package:meal_app/Models/4.2%20meal.dart';

class StarIcon extends StatefulWidget {
  const StarIcon({super.key, required this.meal});

  final Meal meal;
  @override
  State<StarIcon> createState() => _StarIconState();
}

class _StarIconState extends State<StarIcon> {
  late bool isPressed;

  @override
  void initState() {
    super.initState();
    isPressed = widget.meal.favourite;
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          isPressed = !isPressed;
          setState(() {});
          if (isPressed == true) {
            widget.meal.favourite = true;
            BlocProvider.of<FavouriteCubit>(context).addList(widget.meal);
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Added to Favorites!'),
              duration: Duration(
                  seconds:
                      2), // Duration for how long the snackbar will be shown
            ));
          } else {
            widget.meal.favourite = false;
            BlocProvider.of<FavouriteCubit>(context).removeList(widget.meal);
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Removed from Favorites!'),
              duration: Duration(
                  seconds:
                      1), // Duration for how long the snackbar will be shown
            ));
          }
        },
        icon: isPressed == false
            ? const Icon(
                Icons.star_border,
                size: 34,
              )
            : const Icon(
                Icons.star,
                color: Colors.orange,
                size: 34,
              ));
  }
}
