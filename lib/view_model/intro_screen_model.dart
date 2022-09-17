import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wine_ecommerce/repository/services/navigation_services.dart';

import '../database/consts.dart';

class IntroScreenModel extends ChangeNotifier {
  NavigationServices _navigationServices = NavigationServices();
  List<String> svgIcons = <String>[
    wineGlass,
    wineGlassFour,
    wineGlassFive,
  ];
  List<String> subtitleText = [
    "Welcome to the world of wine",
    "Install the wine filter quickly",
    "Huge selection of wines for you",
  ];
  List<String> titleText = [
    "Here you pick a drink that fit all your criteria",
    "You can choose your favorite type of wine",
    "Select wines from different types of race, age and countries",
  ];

  Widget getImage(String assetUrl) {
    final Widget svgIcon = SvgPicture.asset(
      assetUrl,
      // color: Colors.red,
      semanticsLabel: 'A red up arrow',
      height: 250,
    );
    return svgIcon;
  }

  void goHome(BuildContext context) {
    _navigationServices.navigateToHomePage(context);
  }
}
