import 'package:flutter/cupertino.dart';
import 'package:wine_ecommerce/repository/services/navigation_services.dart';

class ProductDetailsModel with ChangeNotifier {
  final NavigationServices _navigationServices = NavigationServices();

  void getBack(BuildContext context) {
    _navigationServices.navigateToPreviousPage(context);
  }
}
