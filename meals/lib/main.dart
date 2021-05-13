import 'package:flutter/material.dart';
import 'package:meals/screens/categories_meals_screen.dart';
import 'package:meals/screens/meal_detail_screen.dart';
import 'package:meals/utils/app_routes.dart';

import 'screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamos Cozinhar?',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        fontFamily: 'Raleway',
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      routes: {
        AppRoutes.HOME: (ctx) => CategoriesScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAIL: (ctx) => MealDetailScreen(),
      },
      //se nao achar no routes ele cai aqui >>>
      //onGenerateRoute: (settings) {
      //  if (settings.name == '/alguma-coisa') {
      //    return null;
      //  } else if (settings.name == '/outra-coisa') {
      //    return null;
      //  } else {
      //    return MaterialPageRoute(builder: (_) {
      //      return CategoriesScreen();
      //    });
      //  }
      //},
      //se não achar em lugar nenhum ele cai aqui >>>
      //onUnknownRoute: (settings) {
      //  return MaterialPageRoute(builder: (_) {
      //    return CategoriesScreen();
      //  });
      //},
    );
  }
}
