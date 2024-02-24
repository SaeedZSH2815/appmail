import 'package:flutter/material.dart';
import '../screens/categories_meals_screen.dart';
import '../widget/categories_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("meals"),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.category),
            ),
            Tab(icon: Icon(Icons.favorite_sharp))
          ]),
        ),
        body: TabBarView(children: [
          CategoriesScreen(),
          CategoriesScreen(),
        ]),
      ),
    );
  }
}
