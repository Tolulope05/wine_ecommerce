import 'package:flutter/material.dart';
import 'package:wine_ecommerce/routes/route_name.dart';
import 'package:wine_ecommerce/view/main_screen.dart';
import 'package:wine_ecommerce/view/intro_screen/intro_screen.dart';

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
