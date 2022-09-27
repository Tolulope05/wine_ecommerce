import 'package:flutter/material.dart';
import 'package:wine_ecommerce/database/consts.dart';
import 'package:wine_ecommerce/view/cart_screen.dart';
import 'package:wine_ecommerce/view/favorite_screen.dart';
import 'package:wine_ecommerce/view/home_screen.dart';
import 'package:wine_ecommerce/view/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const FavoriteScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];

  void chnageScreenTap(int selectedScreenIndex) {
    setState(() {
      _selectedIndex = selectedScreenIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: chnageScreenTap,
        currentIndex: _selectedIndex,
        selectedItemColor: wineColor,
        unselectedItemColor: greyColor,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fact_check_outlined),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
