import 'package:flutter/material.dart';
import './categories_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String clId;
  final String clTitle;
  final Color clColor;
  const CategoryItem(
      {required this.clId, required this.clTitle, required this.clColor});

  // void SelectCategoryItem(BuildContext clContext) {
  //   Navigator.push(clContext, MaterialPageRoute(builder: (_) {
  //     return CategoryMealScreen();
  //   }));
  // }

  void SelectCategoryItem(BuildContext clContext) {
    Navigator.pushNamed(clContext, '/CategoryMealScreen',
        arguments: {'id': clId, 'Title': clTitle});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => SelectCategoryItem(context),
      child: Container(
          padding: EdgeInsets.all(15),
          child: Text(clTitle),
          //color: clColor,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [clColor.withOpacity(0.7), clColor],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
              borderRadius: BorderRadius.circular(15))),
    );
  }
}
