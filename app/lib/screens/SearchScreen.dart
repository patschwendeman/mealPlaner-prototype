import 'package:app/widgets/BottomNav.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BottomNav(),
      body: Text(
        "Search Screen",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}


//Sliver Topbar for appear and dissapear