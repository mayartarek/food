import 'package:flutter/material.dart';
import 'package:food/Screens/meal_detail_screen.dart';
import 'package:food/Screens/tabs_screen.dart';


import 'Screens/category_meals-screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              title: TextStyle(
                  fontFamily: 'RobotoCondensed',
                  fontSize: 20,
                  fontWeight: FontWeight.bold))),
      //home: CategoriesScreen(),
      initialRoute: '/',
      routes:{
        '/':(ctx)=>TabsScreen(),
        CategoryMealsScreen.routeName:(ctx)=>CategoryMealsScreen()
,MealDetails.routeName:(ctx)=>MealDetails()}
    );
  }
}
