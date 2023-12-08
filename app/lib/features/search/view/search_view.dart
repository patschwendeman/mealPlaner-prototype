import 'package:app/shared/widgets/bottom_nav/bottom_nav.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

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

//TODO: Sliver Topbar for appear and dissapear