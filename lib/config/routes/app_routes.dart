import 'package:flutter/material.dart';

import '../../core/component/reusable_components.dart';
import '../../feature/products_screen/presentation/pages/products_screen.dart';

class AppRouteName {
  static const String products = '/';
}

class AppRoute {
  static Route onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteName.products:
        return MaterialPageRoute(builder: (context) => const ProductsScreen());
      default:
        return MaterialPageRoute(builder: (context) => const UnDefinedRoute());
    }
  }
}
