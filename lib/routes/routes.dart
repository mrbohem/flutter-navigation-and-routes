import 'package:first/routes/routes_name.dart';
import 'package:first/screens/categories_screen.dart';
import 'package:first/screens/home_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case RouteName.categoriesScreen:
        return MaterialPageRoute(builder: (_) => const CategoriesScreen());
      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(child: Text("nothign found")),
          );
        });
    }
  }
}
