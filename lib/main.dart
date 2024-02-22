import 'package:appmail/widget/categories_screen.dart';
import 'package:flutter/material.dart';
import './widget/appbar/appbar.dart';
import './widget/categories_meals_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          appBarTheme: AppBarTheme(backgroundColor: Colors.amber),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
        initialRoute: '/',
        routes: {
          '/': (context) => const MyHomePage(title: 'Flutter Demo Home Page'),
          CategoryMealScreen.routeName : (context) => const CategoryMealScreen()
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final String _titleAppBar = 'Mail...';

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(clContext: context, clTitle: _titleAppBar),
        body: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(20),
            child: CategoriesScreen()));
  }
}
