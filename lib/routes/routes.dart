import 'package:flutter/material.dart';
import 'package:wine_ecommerce/model/wine_model.dart';
import 'package:wine_ecommerce/routes/route_name.dart';
import 'package:wine_ecommerce/view/main_screen.dart';
import 'package:wine_ecommerce/view/intro_screen/intro_screen.dart';
import 'package:wine_ecommerce/view/product_details_screen.dart';

class Routes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.mainRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const MainScreen(),
        );
      case RoutesName.introductionScreenRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const IntroScreen(),
        );
      case RoutesName.detailsPageRoute:
        final args = settings.arguments as Wine;
        return MaterialPageRoute(
          builder: (context) => ProductDetailsScreen(wineData: args),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text("No Page Found"),
            ),
          ),
        );
    }
  }
}
