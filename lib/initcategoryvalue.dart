import 'package:appmail/models/meal.dart';
import 'package:flutter/material.dart';
import './models/category.dart';

List<Category> DUMMY_CATEGORIES = [
  Category(clId: "c1", clTitle: "Italian", clColor: Colors.purple),
  Category(clId: "c2", clTitle: "Quick & Easy", clColor: Colors.red),
  Category(clId: "c3", clTitle: "Hamburgers", clColor: Colors.blue)
];

const CategoryList = [
  Category(clId: "c1", clTitle: "Italian", clColor: Colors.purple),
  Category(clId: "c2", clTitle: "Quick & Easy", clColor: Colors.red),
  Category(clId: "c3", clTitle: "Hamburgers", clColor: Colors.blue)
];

const CategoryMeals = [
  Meal(
      id: "id",
      categories: ['c1', 'c2'],
      title: "title",
      imageurl: "imageurl",
      ingredients: ["4 Chicken Breasts", "1 Onion", "2 Cloves Of Garlic"],
      steps: ["Ass cocnut milk", "serve with rice"],
      duration: 20,
      complexy: Complexity.challenging,
      affordability: Affordability.pricey,
      isGlutenFree: true,
      isLactoseFree: true,
      isVegan: true,
      isVegetarian: true)
];
