import 'package:flutter/material.dart';
import '../widget/appbar/appbar.dart';
import '../app_const.dart';
import '../widget/drawer_app/drawer_Main.dart';

class BottomTabScreen extends StatefulWidget {
  const BottomTabScreen({super.key});

  @override
  State<BottomTabScreen> createState() => _BottomTabScreenState();
}

class _BottomTabScreenState extends State<BottomTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(clContext: context, clTitle: AppConstants.cAppBarTitle),
      body: null,
      drawer: MainDrawer(),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            print(value.toString());
          },
          backgroundColor: Theme.of(context).primaryColor,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.stars, color: Colors.red),
              label: "Fav",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.category, color: Colors.red),
                tooltip: "Click category",
                label: "Category")
          ]),
    );
  }
}
