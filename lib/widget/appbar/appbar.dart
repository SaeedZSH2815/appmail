import 'package:flutter/material.dart';

class MyAppBar extends AppBar {
  final String clTitle;
  final BuildContext clContext;
  MyAppBar({super.key, required this.clContext, required this.clTitle})
      : super(
          title: Text(clTitle),
          foregroundColor: Theme.of(clContext).appBarTheme.foregroundColor,
          elevation: 0.2,
        );
}
