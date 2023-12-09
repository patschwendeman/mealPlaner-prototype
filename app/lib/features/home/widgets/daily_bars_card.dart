import 'package:app/features/home/widgets/daily_bar.dart';
import 'package:app/features/home/widgets/macro_bar.dart';
import 'package:app/shared/variables/colors.dart';
import 'package:flutter/material.dart';

class DailyBarsCard extends StatefulWidget {
  const DailyBarsCard({super.key});

  @override
  State<DailyBarsCard> createState() => _DailyBarsCardState();
}

class _DailyBarsCardState extends State<DailyBarsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: const Column(children: [
          MacroBar(color: AppColors.green, width: 1, amound: '100%', label: ''),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DailyBar(color: AppColors.red, label: 'M'),
              DailyBar(color: AppColors.green, label: 'T'),
              DailyBar(color: AppColors.green, label: 'W'),
              DailyBar(color: AppColors.green, label: 'T'),
              DailyBar(color: AppColors.red, label: 'F'),
              DailyBar(color: AppColors.green, label: 'S'),
              DailyBar(color: AppColors.grey, label: 'S'),
            ],
          ),
        ]));
  }
}
