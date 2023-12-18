import 'package:app/features/home/widgets/macro_bar.dart';
import 'package:app/shared/variables/colors.dart';
import 'package:flutter/material.dart';

class MacroBarsCard extends StatefulWidget {
  const MacroBarsCard({super.key});

  @override
  State<MacroBarsCard> createState() => _MacroBarsCardState();
}

class _MacroBarsCardState extends State<MacroBarsCard> {
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
      child: Stack(children: [
        Row(
          children: [
            const Text(
              'Macros',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            const SizedBox(
              width: 8.0,
            ),
            Image.asset(
              'assets/icons/arrow_bottom.png',
              width: 14.0,
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.only(top: 36.0),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MacroBar(
                  color: AppColors.red,
                  width: 0.25,
                  amound: '100g',
                  label: 'Protein'),
              MacroBar(
                  color: AppColors.blue,
                  width: 0.25,
                  amound: '100g',
                  label: 'Carbs'),
              MacroBar(
                  color: AppColors.yellow,
                  width: 0.25,
                  amound: '100g',
                  label: 'Fat'),
            ],
          ),
        ),
      ]),
    );
  }
}
