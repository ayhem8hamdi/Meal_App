import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_app/Cubits/Favourite_meals_cubit/favourite_cubit.dart';
import 'package:meal_app/Methodes/scaffold_messenger.dart';
import 'package:meal_app/Views/home_screen.dart';
import 'package:meal_app/Widgets/custom_icon.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});
  static String id = 'FilterScreen';

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  void reset(BuildContext context) {
    FavouriteCubit state = BlocProvider.of<FavouriteCubit>(context);
    setState(() {
      state.vegan = false;
      state.vegetarian = false;
      state.lactoseFree = false;
      state.isGluteen = false;
    });
    state.resett();
  }

  @override
  Widget build(BuildContext context) {
    FavouriteCubit cubit = BlocProvider.of<FavouriteCubit>(context);

    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, HomeScreen.id);
              },
              icon: const Icon(Icons.arrow_back)),
          actions: [
            IconButton(
                onPressed: () {
                  reset(context);
                  scafMess(context, 'There are no filter anymore');
                },
                icon: const CustomIcon(icon: Icons.refresh)),
            IconButton(
                onPressed: () {
                  BlocProvider.of<FavouriteCubit>(context).UpdateSpecificList(
                      isGluteen: cubit.isGluteen,
                      vegan: cubit.vegan,
                      vegetarian: cubit.vegetarian,
                      lactoseFree: cubit.lactoseFree);
                  Navigator.pop(context);
                  scafMess(context, 'Filter Applied Successfully');
                },
                icon: const CustomIcon(
                  icon: Icons.check,
                ))
          ],
          title: const Text(
            'Your Filters',
            style: TextStyle(fontSize: 28),
          )),
      body: ListView(
        children: [
          SwitchListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 25),
              title: const Text(
                'Gluten-Free',
                style: TextStyle(fontSize: 25),
              ),
              subtitle: const Text(
                'Only include gluten_free meals ',
                style: TextStyle(fontSize: 18),
              ),
              activeColor: Colors.orange.withOpacity(0.77),
              value: cubit.isGluteen,
              onChanged: (bool value) {
                setState(() {
                  cubit.isGluteen = value;
                });
              }),
          SwitchListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 25),
              title: const Text(
                'Lactose-free',
                style: TextStyle(fontSize: 25),
              ),
              subtitle: const Text(
                'Only include lactose-free meals ',
                style: TextStyle(fontSize: 18),
              ),
              activeColor: Colors.orange.withOpacity(0.77),
              value: cubit.lactoseFree,
              onChanged: (bool value) {
                setState(() {
                  cubit.lactoseFree = value;
                });
              }),
          SwitchListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 25),
              title: const Text(
                'Vegan',
                style: TextStyle(fontSize: 25),
              ),
              subtitle: const Text(
                'Only include vegan meals ',
                style: TextStyle(fontSize: 18),
              ),
              activeColor: Colors.orange.withOpacity(0.77),
              value: cubit.vegan,
              onChanged: (bool value) {
                setState(() {
                  cubit.vegan = value;
                });
              }),
          SwitchListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 25),
              title: const Text(
                'Vegetarian',
                style: TextStyle(fontSize: 25),
              ),
              subtitle: const Text(
                'Only include vegetarian meals ',
                style: TextStyle(fontSize: 18),
              ),
              activeColor: Colors.orange.withOpacity(0.77),
              value: cubit.vegetarian,
              onChanged: (bool value) {
                setState(() {
                  cubit.vegetarian = value;
                });
              })
        ],
      ),
    );
  }
}
