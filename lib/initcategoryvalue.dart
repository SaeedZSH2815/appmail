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
      id: "1",
      categories: ['c1', 'c2', 'c3'],
      title: "Cloves Of Garlic",
      imageurl:
          "https://www.fileavaran.ir/storage/images/m-270166739900163627d5997019.jpeg",
      ingredients: ["4 Chicken Breasts", "1 Onion", "2 Cloves Of Garlic"],
      steps: ["Ass cocnut milk", "serve with rice"],
      duration: 20,
      complexy: Complexity.challenging,
      affordability: Affordability.pricey,
      isGlutenFree: true,
      isLactoseFree: true,
      isVegan: true,
      isVegetarian: true),
  Meal(
      id: "2",
      categories: ['c1', 'c2', 'c3'],
      title: "Chicken Breasts dfd sdfdsf sdfdsf sdfdsf ",
      imageurl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXW6d1hXU4yO6ZQJ6Gv84O5en8VyThgNWOHm94R7aZNA&s",
      ingredients: ["4 Chicken Breasts", "1 Onion", "2 Cloves Of Garlic"],
      steps: ["Ass cocnut milk", "serve with rice"],
      duration: 20,
      complexy: Complexity.challenging,
      affordability: Affordability.pricey,
      isGlutenFree: true,
      isLactoseFree: true,
      isVegan: true,
      isVegetarian: true),
];
