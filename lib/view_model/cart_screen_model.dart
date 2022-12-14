import 'package:flutter/material.dart';

import '../repository/services/navigation_services.dart';

class CartScreenModel with ChangeNotifier {
  final NavigationServices _navigationServices = NavigationServices();

  void getToChekOutPage(BuildContext context) {
    _navigationServices.navigateToCheckOutPage(context);
  }
}
