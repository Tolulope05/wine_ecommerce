import 'package:flutter/cupertino.dart';
import 'package:wine_ecommerce/database/test_db.dart';

import '../model/wine_model.dart';
import '../repository/services/navigation_services.dart';

class HomeScreenModel extends ChangeNotifier {
  int selectedIndex = 1;
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

  void changeIndex(int index) {
    selectedIndex = index;
    notifyListeners();
    print("New number is $selectedIndex");
  }

  final List<Wine> _wineList = <Wine>[];

  List<Wine> get wineList => _wineList;

  Future<List<Wine>> getWinefromDB() async {
    List<Map<String, dynamic>> dataFromDB = TestDatabase().products;
    for (var data in dataFromDB) {
      _wineList.add(Wine.fromJson(data));
    }
    return _wineList;
  }
}
