import 'package:app/features/home/widgets/daily_bars_card.dart';
import 'package:app/features/home/widgets/macro_bars_card.dart';
import 'package:app/features/home/widgets/pie_chart_card.dart';
import 'package:app/shared/widgets/bottom_nav/bottom_nav.dart';
import 'package:app/shared/widgets/meal_card.dart';
import 'package:flutter/material.dart';
import 'package:app/shared/variables/colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const BottomNav(),
        body: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: AppColors.grey,
            child: Center(
              child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: const SingleChildScrollView(
                      child: Column(
                    /* mainAxisAlignment: MainAxisAlignment.spaceBetween, */

                    children: [
                      PieChartCard(),
                      MacroBarsCard(),
                      DailyBarsCard(),
                      Divider(
                        color: AppColors.white,
                        height: 20, // Höhe der Linie
                        thickness: 2, // Dicke der Linie
                      ),
                      MealCard(),
                    ],
                  ))),
            ),
          ),
        ));
  }
}
