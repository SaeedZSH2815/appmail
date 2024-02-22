import 'package:appmail/widget/appbar/appbar.dart';
import 'package:flutter/material.dart';
import '../app_const.dart';

class CategoryMealScreen extends StatelessWidget {
  static const routeName = '/CategoryMealScreen';
  const CategoryMealScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;

    final arguments1 =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    if (arguments1.containsKey("id")) print("vfdfd");

    return Scaffold(
      appBar: MyAppBar(clContext: context, clTitle: AppConstants.cAppBarTitle),
      body: Container(
          child: Center(
        child: Text(arguments1.toString()),
      )),
    );
  }
}
