import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String clTitle;
  final Color clColor;
  const CategoryItem({required this.clTitle, required this.clColor});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15),
        child: Text(clTitle),
        //color: clColor,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [clColor.withOpacity(0.7), clColor],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(15)));
  }
}
