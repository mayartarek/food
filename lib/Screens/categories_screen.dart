import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/dumy_data.dart';
import 'package:food/widget/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  GridView(
        padding: EdgeInsets.all(25),
        children: DUMMY_CATEGORIES
            .map((categ) => CategoryItem( categ.title, categ.color,categ.id))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            childAspectRatio: 3 / 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 10),

    );
  }
}
