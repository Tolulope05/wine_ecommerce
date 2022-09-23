import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wine_ecommerce/database/consts.dart';
import 'package:wine_ecommerce/routes/route_name.dart';
import 'package:wine_ecommerce/routes/routes.dart';
import 'package:wine_ecommerce/view_model/cart_screen_model.dart';
import 'package:wine_ecommerce/view_model/home_screen_model.dart';
import 'package:wine_ecommerce/view_model/payment_screen_model.dart';
import 'package:wine_ecommerce/view_model/product_detail_model.dart';

import 'view_model/checkout_screen_model.dart';
import 'view_model/intro_screen_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<IntroScreenModel>(
          create: (_) => IntroScreenModel(),
        ),
        ChangeNotifierProvider<HomeScreenModel>(
          create: (_) => HomeScreenModel(),
        ),
        ChangeNotifierProvider<ProductDetailsModel>(
          create: (_) => ProductDetailsModel(),
        ),
        ChangeNotifierProvider<CartScreenModel>(
          create: (_) => CartScreenModel(),
        ),
        ChangeNotifierProvider<CheckoutScreenModel>(
          create: (_) => CheckoutScreenModel(),
        ),
        ChangeNotifierProvider<PaymentScreenmodel>(
          create: (_) => PaymentScreenmodel(),
        ),
      ],
      builder: (context, child) {
        return MaterialApp(
          title: 'Wine E-Commerce',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: wineColor,
          )),
          initialRoute: RoutesName.introductionScreenRoute,
          onGenerateRoute: Routes.onGenerateRoute,
        );
      },
    );
  }
}
