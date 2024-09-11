import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_app/Cubits/Favourite_meals_cubit/favourite_cubit.dart';
import 'package:meal_app/Methodes/scaffold_messenger.dart';
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
            scafMess(context, 'Added to Favourite');
          } else {
            widget.meal.favourite = false;
            BlocProvider.of<FavouriteCubit>(context).removeList(widget.meal);
            scafMess(context, 'Removed from Favorites!');
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
