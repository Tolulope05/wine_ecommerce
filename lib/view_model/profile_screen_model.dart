import 'package:flutter/cupertino.dart';
import 'package:wine_ecommerce/repository/services/navigation_services.dart';

class ProfileScreenModel extends ChangeNotifier {
  NavigationServices navigationServices = NavigationServices();

  void goToLogin(BuildContext context) {
    navigationServices.navigateToLoginPage(context);
  }

  void goToEditrProfile(BuildContext context) {
    navigationServices.navigateToEditProfileScreen(context);
  }
}
