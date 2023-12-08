import 'package:flutter/material.dart';

class MacroBar extends StatefulWidget {
  const MacroBar(
      {super.key,
      required this.color,
      required this.width,
      required this.label,
      required this.amound});

  final Color color;
  final num width;
  final String amound;
  final String label;

  @override
  State<MacroBar> createState() => _MacroBarState();
}

class _MacroBarState extends State<MacroBar> {
  @override
  Widget build(BuildContext context) {
    double containerWidth =
        MediaQuery.of(context).size.width * widget.width.toDouble();
    return Column(children: [
      Container(
        width: containerWidth,
        height: 20,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Center(
          child: Text(widget.amound),
        ),
      ),
      Text(widget.label,
        
        )
      ]
    );
  }
}
