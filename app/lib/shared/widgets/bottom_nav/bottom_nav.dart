import 'package:app/features/home/view/home_screen.dart';
import 'package:app/features/meal_plans/view/mealplans_screen.dart';
import 'package:app/features/searchScreen.dart';
import 'package:app/shared/variables/colors.dart';
import 'package:app/shared/widgets/bottem_nav-button.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget implements PreferredSizeWidget {
  const BottomNav({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(70.0);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        color: AppColors.white,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavButton(
              icon: SearchScreen(),
              imagePath: 'assets/Search2.png',
            ),
            BottomNavButton(
              icon: HomeScreen(),
              imagePath: 'assets/Home2.png',
            ),
            BottomNavButton(
              icon: MealPlansScreen(),
              imagePath: 'assets/Order2.png',
            ),
          ],
        ));
  }
}
