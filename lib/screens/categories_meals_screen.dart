import 'package:appmail/initcategoryvalue.dart';
import 'package:appmail/widget/appbar/appbar.dart';
import 'package:flutter/material.dart';
import '../app_const.dart';
import '../widget/meal_item.dart';

class CategoryMealScreen extends StatelessWidget {
  static const routeName = '/CategoryMealScreen';
  const CategoryMealScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final arguments = ModalRoute.of(context)!.settings.arguments;

    final arguments1 =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    if (arguments1.containsKey("id")) print("vfdfd");
    final cMail = CategoryMeals.where((t) {
      return t.categories.contains("c3");
    }).toList();

    return Scaffold(
      appBar: MyAppBar(clContext: context, clTitle: AppConstants.cAppBarTitle),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return MealItem(
              fTitle: cMail[index].title, fImageUrl: cMail[index].imageurl);
        },
        itemCount: cMail.length,
      ),
    );
  }
}
