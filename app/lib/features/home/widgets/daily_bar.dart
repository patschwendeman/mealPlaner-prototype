import 'package:flutter/material.dart';

class DailyBar extends StatefulWidget {
  const DailyBar({super.key, required this.color, required this.label});

  final Color color;
  final String label;

  @override
  State<DailyBar> createState() => _DailyBarState();
}

class _DailyBarState extends State<DailyBar> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(100.0),
        ),
      ),
      Text(widget.label,
       
        )
    ]);
  }
}
