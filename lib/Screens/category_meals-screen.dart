import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/dumy_data.dart';

import 'package:food/widget/meal-item.dart';

class CategoryMealsScreen extends StatelessWidget {
  /* final String categoryId;
  final String categoryTitle;

  const CategoryMealsScreen({Key key, this.categoryId, this.categoryTitle})
      : super(key: key);*/
  static const routeName = '/category-meals';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final routeArgue =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryId = routeArgue['id'];
    final categoryTitle = routeArgue['title'];
    final categoryMeal = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
              id: categoryMeal[index].id,
              title: categoryMeal[index].title,
              imageUrl: categoryMeal[index].imageUrl,
              affordability: categoryMeal[index].affordability,
              complexity:  categoryMeal[index].complexity,
              duration:  categoryMeal[index].duration,
            );
          },
          itemCount: categoryMeal.length,
        ));
  }
}
