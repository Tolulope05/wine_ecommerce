import 'package:flutter/material.dart';

import '../repository/services/navigation_services.dart';

class CheckoutScreenModel with ChangeNotifier {
  int tabView = 0;
  void chnagetabview(int int) {
    tabView = int;
    notifyListeners();
  }

  final List<String> tags = [
    "Delivery",
    "Pickup",
  ];

  final NavigationServices _navigationServices = NavigationServices();

  void getBack(BuildContext context) {
    _navigationServices.navigateToPreviousPage(context);
  }

  void goToPayment(BuildContext context) {
    _navigationServices.navigateToPaymentPage(context);
  }

  final TextEditingController locationController =
      TextEditingController(text: "Apartment number, Office floor");
}
