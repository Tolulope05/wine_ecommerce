import 'package:flutter/material.dart';

import '../repository/services/navigation_services.dart';

class PaymentScreenmodel with ChangeNotifier {
  final NavigationServices _navigationServices = NavigationServices();

  void getBack(BuildContext context) {
    _navigationServices.navigateToPreviousPage(context);
  }

  void getToPayment(BuildContext context) {
    _navigationServices.navigateToSuccessPage(context);
  }

  void getToHome(BuildContext context) {
    _navigationServices.navigateToHomePage(context);
  }
}
