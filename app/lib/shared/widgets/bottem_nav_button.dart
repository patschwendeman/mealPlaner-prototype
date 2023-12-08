import 'package:flutter/material.dart';

class BottomNavButton extends StatelessWidget {
  const BottomNavButton(
      {super.key, required this.icon, required this.imagePath});

  final Widget icon;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => icon,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return child;
            },
            transitionDuration: const Duration(seconds: 0),
          ),
        );
      },
      icon: Image.asset(
        imagePath,
        width: 30,
        height: 30,
      ),
    );
  }
}
