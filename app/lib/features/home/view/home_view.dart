import 'package:app/features/home/widgets/daily_bars_card.dart';
import 'package:app/features/home/widgets/macro_bars_card.dart';
import 'package:app/features/home/widgets/pie_chart_card.dart';
import 'package:app/shared/widgets/bottom_nav.dart';
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
                    padding: const EdgeInsets.symmetric(horizontal: 26.0),
                    child: Column(
                      /* mainAxisAlignment: MainAxisAlignment.spaceBetween, */

                      children: [
                        const PieChartCard(),
                        MacroBarsCard(),
                        const DailyBarsCard(),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 120,
                          margin: const EdgeInsets.symmetric(vertical: 8.0),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                      ],
                    ))),
          ),
        ));
  }
}
