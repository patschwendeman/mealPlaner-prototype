import 'package:app/features/search/view/top_bar/top_bar.dart';
import 'package:app/shared/variables/colors.dart';
import 'package:app/shared/widgets/bottom_nav/bottom_nav.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNav(),
      body: SafeArea(
        child: Container(
          color: AppColors.grey,
          child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: <Widget>[
            const CustomAppBar(),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    color: Colors.transparent,
                    height: 100.0,
                    child: Center(
                      child: Text('$index', textScaleFactor: 5.0),
                    ),
                  );
                },
                childCount: 20,
              ),
            ),
          ],
        ),
        ),
      ),
    );
  }
}
