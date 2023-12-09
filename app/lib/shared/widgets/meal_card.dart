import 'package:flutter/material.dart';

class MealCard extends StatefulWidget {
  const MealCard({super.key});

  @override
  State<MealCard> createState() => _MealCardState();
}

class _MealCardState extends State<MealCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 180,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        image: const DecorationImage(
          image: AssetImage(
              'assets/placeholder/mealCard.jpg'), 
          fit: BoxFit.cover, 
        ),
      ),
    );
  }
}
