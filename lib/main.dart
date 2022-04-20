import 'package:flutter/material.dart';
import 'package:plant_app/Screens/home/home.dart';
import 'package:plant_app/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant App',
      theme: ThemeData(
        scaffoldBackgroundColor: kbackgroundColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: kprimaryColor,
        ),
        textTheme: Theme.of(context).textTheme.apply(bodyColor: ktextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
    );
  }
}
