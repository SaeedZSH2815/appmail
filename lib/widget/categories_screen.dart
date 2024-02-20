import 'package:appmail/widget/CategoryItem.dart';
import 'package:flutter/material.dart';
import '../initcategoryvalue.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
        children: CategoryList.map((e) {
          return CategoryItem(clId:e.clId ,  clTitle: e.clTitle, clColor: e.clColor);
        }).toList(),
        
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20));
  }
}
