import 'package:flutter/material.dart';
import 'package:wine_ecommerce/model/wine_model.dart';
import 'package:wine_ecommerce/routes/route_name.dart';

class NavigationServices {
  void navigateToHomePage(BuildContext context) {
    Navigator.pushReplacementNamed(context, RoutesName.mainRoute);
  }

  void navigateToDetailsPage(BuildContext context, Wine wine) {
    Navigator.pushNamed(
      context,
      RoutesName.detailsPageRoute,
      arguments: wine,
    );
  }

  void navigateToPreviousPage(BuildContext context) {
    Navigator.pop(context);
  }

  void navigateToCartPage(BuildContext context) {
    Navigator.pushNamed(context, RoutesName.cartPageRoute);
  }

  void navigateToCheckOutPage(BuildContext context) {
    Navigator.pushNamed(context, RoutesName.checkoutPageRoute);
  }

  void navigateToPaymentPage(BuildContext context) {
    Navigator.pushNamed(context, RoutesName.paymentPageRoute);
  }

  void navigateToSuccessPage(BuildContext context) {
    Navigator.pushReplacementNamed(context, RoutesName.paymentSuccess);
  }

  void navigateToLoginPage(BuildContext context) {
    Navigator.pushNamed(context, RoutesName.signin);
  }

  void navigateToSignupPage(BuildContext context) {
    Navigator.pushNamed(context, RoutesName.signup);
  }
}
