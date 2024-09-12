import 'package:flutter/material.dart';
import 'package:meal_app/Views/filter_screen.dart';
import 'package:meal_app/Widgets/custom_list_tile.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Colors.orange.withOpacity(0.75),
                    Colors.amber.withOpacity(0.65)
                  ]),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.fastfood,
                  size: 45,
                  color: Color(0xffE6E0E9),
                ),
                Text(
                  'Coocking Up !',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          CustomListTile(
            icondata: Icons.restaurant,
            text: 'Meals',
            onTap: () {
              Navigator.pop(context);
            },
          ),
          CustomListTile(
            icondata: Icons.settings,
            text: 'Filters',
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, FilterScreen.id);
            },
          )
        ],
      ),
    );
  }
}
