import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/dumy_data.dart';

class MealDetails extends StatelessWidget {
  Widget buildContainerText(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.only(top: 15, bottom: 0),
      child: Text(
        text,
        style: Theme.of(context).textTheme.title,
      ),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(20)),
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(20),
        height: 150,
        width: 300,
        child: child);
  }

  static const routeName = '/meal-detail';
  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    final selectMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('${selectMeal.title}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              child: Image.network(
                selectMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildContainerText(context, 'Ingredients'),
            buildContainer(
              ListView.builder(
                itemCount: selectMeal.ingredients.length,
                itemBuilder: (ctx, index) => Card(
                  color: Theme.of(context).accentColor,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Text(selectMeal.ingredients[index]),
                  ),
                ),
              ),
            ),
            buildContainerText(context, 'Steps'),
            buildContainer(ListView.builder(
                itemCount: selectMeal.steps.length,
                itemBuilder: (ctx, index) => Column(
                  children: [
                    ListTile(
                       leading: CircleAvatar(
                         child: Text('# ${index+1}'),

                       ),
                      title: Text(selectMeal.steps[index]),
                    ),
                    Divider()
                  ],
                )))
          ],
        ),
      ),
    );
  }
}
