
import 'package:app/shared/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';

class MealPlansView extends StatelessWidget {
  const MealPlansView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BottomNav(),
      body: Text(
              "Order Screen",
              style: TextStyle(color: Colors.white),
            ),
          );

  }
}
