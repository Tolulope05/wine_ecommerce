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

  void navigateToLoginPage(BuildContext context, [bool isPopOff = true]) {
    if (isPopOff) {
      Navigator.pushNamed(context, RoutesName.signin);
    } else {
      Navigator.pushReplacementNamed(context, RoutesName.signin);
    }
  }

  void navigateToSignupPage(BuildContext context, [bool isPopOff = true]) {
    if (isPopOff) {
      Navigator.pushNamed(context, RoutesName.signup);
    } else {
      Navigator.pushReplacementNamed(context, RoutesName.signup);
    }
  }

  void navigateToVerifyPhone(BuildContext context) {
    Navigator.pushNamed(context, RoutesName.signupSetupPinCode);
  }

  void navigateToEditProfileScreen(BuildContext context) {
    Navigator.pushNamed(context, RoutesName.editUser);
  }
}
