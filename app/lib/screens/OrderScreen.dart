import 'package:app/widgets/BottomNav.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BottomNav(),
      body: Text(
              "Order Screen",
              style: TextStyle(color: Colors.white),
            ),
          );

  }
}