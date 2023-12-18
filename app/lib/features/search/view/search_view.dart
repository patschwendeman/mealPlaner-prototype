import 'package:app/features/search/bloc/search_bloc.dart';
import 'package:app/features/search/widgets/filter_bar/filter_bar.dart';
import 'package:app/features/search/widgets/top_bar/top_bar.dart';
import 'package:app/shared/variables/colors.dart';
import 'package:app/shared/widgets/bottom_nav/bottom_nav.dart';
import 'package:app/shared/widgets/meal_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNav(),
      body: SafeArea(
        child: 
        Container(
          color: AppColors.grey,
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: <Widget>[
              const CustomAppBar(),
              SliverList.list(
                children: const [
                  FilterBar(),
                ],
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      color: Colors.transparent,
                      child: const Center(
                        child: MealCard(),
                      ),
                    );
                  },
                  childCount: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
