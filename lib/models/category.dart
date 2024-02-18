import 'package:flutter/material.dart';

class Category {
  final String clId;
  final String clTitle;
  final Color clColor;  
  const Category({required this.clId,required this.clTitle,this.clColor = Colors.orange});
}
