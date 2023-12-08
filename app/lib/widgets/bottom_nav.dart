import 'package:app/features/home/view/home_screen.dart';
import 'package:app/features/mealplans/view/mealplans_screen.dart';
import 'package:app/features/searchScreen.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget implements PreferredSizeWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 50,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
         IconButton(
            onPressed: () {
                Navigator.push(context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const SearchScreen(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    return child;
                  },
                  transitionDuration: const Duration(seconds: 0),
                ),
              );
            }, 
            icon: Image.asset(
              'assets/Search2.png', 
              width: 30, 
              height: 30, 
            ),
            ),
            IconButton(
            onPressed: () {
                Navigator.push(context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const HomeScreen(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    return child;
                  },
                  transitionDuration: const Duration(seconds: 0),
                ),
              );
            }, 
            icon: Image.asset(
              'assets/Home2.png', 
              width: 30, 
              height: 30, 
            ),
            ),
            IconButton(
            onPressed: () {
                Navigator.push(context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const MealPlansScreen(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    return child;
                  },
                  transitionDuration: const Duration(seconds: 0),
                ),
              );
            }, 
            icon: Image.asset(
              'assets/Order2.png', 
              width: 30, 
              height: 30, 
            ),
            ),
            
          
            
          ],
        )
      
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(70.0);
}