import 'package:floating_navbar/floating_navbar.dart';
import 'package:floating_navbar/floating_navbar_item.dart';
import 'package:flutter/material.dart';
import 'package:wine_ecommerce/database/consts.dart';
import 'package:wine_ecommerce/view/favorite_screen.dart';
import 'package:wine_ecommerce/view/home_screen.dart';
import 'package:wine_ecommerce/view/profile_screen.dart';
import 'package:wine_ecommerce/view/settings_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FloatingNavBar(
        resizeToAvoidBottomInset: false,
        color: wineColor,
        selectedIconColor: Colors.white,
        unselectedIconColor: Colors.white.withOpacity(0.6),
        items: [
          FloatingNavBarItem(
              iconData: Icons.home, page: HomeScreen(), title: 'Home'),
          FloatingNavBarItem(
              iconData: Icons.favorite,
              page: FavoriteScreen(),
              title: 'Favorite'),
          FloatingNavBarItem(
              iconData: Icons.settings,
              page: SettingsScreen(),
              title: 'Settings'),
          FloatingNavBarItem(
              iconData: Icons.person, page: ProfileScreen(), title: 'Profile'),
        ],
        horizontalPadding: 10.0,
        hapticFeedback: true,
      ),
    );
  }
}
