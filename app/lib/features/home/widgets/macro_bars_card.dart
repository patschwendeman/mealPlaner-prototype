import 'package:app/features/home/widgets/macro_bar.dart';
import 'package:app/shared/variables/colors.dart';
import 'package:flutter/material.dart';

class MacroBarsCard extends StatefulWidget {

  @override
  State<MacroBarsCard> createState() => _MacroBarsCardState();
}

class _MacroBarsCardState extends State<MacroBarsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      margin: EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MacroBar(
              color: AppColors.red,
              width: 0.25,
              amound: '100g',
              label: 'Protein'),
          MacroBar(
              color: AppColors.blue, width: 0.25, amound: '100g', label: 'Carbs'),
          MacroBar(
              color: AppColors.yellow, width: 0.25, amound: '100g', label: 'Fat'),
        ],
      ),
    );
  }
}
