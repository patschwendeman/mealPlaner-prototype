import 'package:app/shared/variables/colors.dart';
import 'package:flutter/material.dart';

class FilterItem extends StatefulWidget {
  const FilterItem(
      {super.key,
      required this.label,
      required this.color,
      required this.icon});

  final String label;
  final Color color;
  final String icon;

  @override
  State<FilterItem> createState() => _FilterItemState();
}

class _FilterItemState extends State<FilterItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 16.0, top: 14.0, bottom: 14.0),
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        height: 50,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(100.0),
          /* border: Border.all(color: widget.color, width: 2.0), */
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Image.asset(
            widget.icon,
            width: 16.0,
            height: 16.0,
          ),
          const SizedBox(
            width: 8,
          ),
          Center(
              child: Text(
            widget.label,
            style: const TextStyle(
              fontSize: 12,
            ),
          ))
        ]));
  }
}
