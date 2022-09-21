import 'package:flutter/material.dart';
import 'package:wine_ecommerce/routes/route_name.dart';

class NavigationServices {
  void navigateToHomePage(BuildContext context) {
    Navigator.pushReplacementNamed(context, RoutesName.mainRoute);
  }

  void navigateToDetailsPage(BuildContext context) {
    Navigator.pushNamed(
      context,
      RoutesName.detailsPageRoute,
    );
  }

  void navigateToPreviousPage(BuildContext context) {
    Navigator.pop(context);
  }
}
