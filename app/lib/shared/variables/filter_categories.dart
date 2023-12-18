import 'package:app/shared/variables/colors.dart';

class FilterCategories {
  static const List<Map<String, dynamic>> filterCategoriesList = [
    {'label': 'Liked', 'color': AppColors.red, 'icon': 'assets/icons/like.png'},
    {
      'label': 'Vegan',
      'color': AppColors.green,
      'icon': 'assets/icons/plant.png'
    },
    {
      'label': 'Veggie',
      'color': AppColors.green,
      'icon': 'assets/icons/plant.png'
    },
    {
      'label': 'High Protein',
      'color': AppColors.red,
      'icon': 'assets/icons/protein.png'
    },
    {
      'label': 'Low Carb',
      'color': AppColors.blue,
      'icon': 'assets/icons/carbs.png'
    },
    {
      'label': 'Low Fat',
      'color': AppColors.yellow,
      'icon': 'assets/icons/fat.png'
    },
  ];
}
