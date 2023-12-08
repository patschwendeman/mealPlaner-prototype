import 'package:app/shared/variables/colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      floating: true,
      onStretchTrigger: () async {},
      stretchTriggerOffset: 300.0,
      expandedHeight: 50.0,
      flexibleSpace: Container(
        color: AppColors.white,
      ),
    );
  }
}