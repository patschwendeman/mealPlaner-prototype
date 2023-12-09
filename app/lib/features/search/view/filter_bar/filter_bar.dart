import 'package:app/features/search/view/filter_bar/filter_item.dart';
import 'package:app/shared/variables/colors.dart';
import 'package:app/shared/variables/filter_categories.dart';
import 'package:flutter/material.dart';

class FilterBar extends StatelessWidget {
  const FilterBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.white, width: 1.0)),
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: FilterCategories.filterCategoriesList.length,
        itemBuilder: (context, index) {
          final category = FilterCategories.filterCategoriesList[index];
          return FilterItem(
              label: category['label'],
              color: category['color']);
        },
      ),
    );
  }
}
