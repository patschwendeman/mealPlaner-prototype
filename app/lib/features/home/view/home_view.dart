import 'package:app/features/home/widgets/daily_bars_card.dart';
import 'package:app/features/home/widgets/macro_bars_card.dart';
import 'package:app/features/home/widgets/pie_chart_card.dart';
import 'package:app/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const dataMap = <String, double>{
    "Protein": 4.5,
    "Fat": 3.5,
    "Carbs": 2.0,
  };

  static const colorList = <Color>[
    Color(0xFFEB5D59),
    Color(0xFFE8EB59),
    Color(0xFFA7CDEA),
    Color(0xFF5DA84B),
    Color(0xFFF1F1F1),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const BottomNav(),
        body: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: const Color(0xFFF1F1F1),
            child: Center(
                child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 26.0),
                    child: Column(
                      /* mainAxisAlignment: MainAxisAlignment.spaceBetween, */

                      children: [
                        const PieChartCard(
                          dataMap: dataMap,
                          colorList: colorList,
                        ),
                        const MacroBarsCard(colorList: colorList),
                        const DailyBarsCard(colorList: colorList),
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