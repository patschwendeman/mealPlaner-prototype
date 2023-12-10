import 'package:app/shared/variables/colors.dart';
import 'package:flutter/material.dart';

class FilterItem extends StatefulWidget {
  const FilterItem({super.key, required this.label, required this.color});

  final String label;
  final Color color;

  @override
  State<FilterItem> createState() => _FilterItemState();
}

class _FilterItemState extends State<FilterItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 16.0, top: 14.0, bottom: 14.0),
        width: 90,
        height: 50,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(100.0),
          border: Border.all(color: widget.color, width: 2.0),
        ),
        child: Center(
            child: Text(
          widget.label,
          style: const TextStyle(
            fontSize: 12,
          ),
        )));
  }
}
