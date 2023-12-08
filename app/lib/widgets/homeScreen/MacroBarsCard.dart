import 'package:app/widgets/homeScreen/MacroBar.dart';
import 'package:flutter/material.dart';

class MacroBarsCard extends StatefulWidget {
  const MacroBarsCard({super.key, required this.colorList});

  final List<Color> colorList;

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
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MacroBar(
              color: widget.colorList[0],
              width: 0.25,
              amound: '100g',
              label: 'Protein'),
          MacroBar(
              color: widget.colorList[1], width: 0.25, amound: '100g', label: 'Carbs'),
          MacroBar(
              color: widget.colorList[2], width: 0.25, amound: '100g', label: 'Fat'),
        ],
      ),
    );
  }
}
