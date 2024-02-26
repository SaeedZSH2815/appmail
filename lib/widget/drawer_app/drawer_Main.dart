import 'package:appmail/app_const.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        Container(
          height: 120,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          alignment: Alignment.centerLeft,
          color: Colors.amber,
          child: Text(
            "Cooking Up!",
            style: TextStyle(fontWeight: FontWeight.w900),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        BuildListTitle(Icons.restaurant, () {
          Navigator.of(context).pushNamed(AppConstants.cFilterMealRouteName);
        }),
        BuildListTitle(Icons.abc_outlined, () {
          Navigator.of(context).pushNamed(AppConstants.cFilterMealRouteName);
        }),
      ]),
    );
  }

  Widget BuildListTitle(IconData clIcon, Function clOnTab) {
    return ListTile(
      leading: Icon(
        clIcon,
        size: 26,
      ),
      title: Text("Meal"),
      onTap: () => clOnTab(),
    );
  }
}
