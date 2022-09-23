import 'package:flutter/cupertino.dart';

import '../repository/services/navigation_services.dart';

class PaymentScreenmodel with ChangeNotifier {
  final NavigationServices _navigationServices = NavigationServices();

  void getBack(BuildContext context) {
    _navigationServices.navigateToPreviousPage(context);
  }
}
