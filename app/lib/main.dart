import 'package:app/features/home/view/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Meal Plan',
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/': (context) => const HomeScreen(),
        });
  }
}
