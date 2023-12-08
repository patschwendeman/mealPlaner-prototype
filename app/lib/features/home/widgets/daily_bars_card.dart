import 'package:app/features/home/widgets/daily_bar.dart';
import 'package:app/features/home/widgets/macro_bar.dart';
import 'package:flutter/material.dart';

class DailyBarsCard extends StatefulWidget {
  const DailyBarsCard({super.key,  required this.colorList});

  final List<Color> colorList;

  @override
  State<DailyBarsCard> createState() => _DailyBarsCardState();
}

class _DailyBarsCardState extends State<DailyBarsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      margin: EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          MacroBar(
              color: widget.colorList[3], width: 1, amound: '100%', label: ''),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DailyBar(color: widget.colorList[0], label: 'M'),
                      DailyBar(color: widget.colorList[3], label: 'T'),
                      DailyBar(color: widget.colorList[3], label: 'W'),
                      DailyBar(color: widget.colorList[3], label: 'T'),
                      DailyBar(color: widget.colorList[3], label: 'F'),
                      DailyBar(color: widget.colorList[0], label: 'S'),
                      DailyBar(color: widget.colorList[4], label: 'S'),
                    ],
                  ),
                  ]
      )
    );
  }
}