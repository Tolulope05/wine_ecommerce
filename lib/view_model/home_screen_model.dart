import 'package:flutter/cupertino.dart';

import '../repository/services/navigation_services.dart';

class HomeScreenModel extends ChangeNotifier {
  final NavigationServices _navigationServices = NavigationServices();

  void goToDetailsPage(BuildContext context) {
    _navigationServices.navigateToDetailsPage(context);
  }

  List<String> tags = [
    "Red",
    "White",
    "Deep Wine",
    "Rose",
    "Sparkle",
    "Fortified",
    "Barlett",
    "Queens",
  ];
}
