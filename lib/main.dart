import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wine_ecommerce/routes/route_name.dart';
import 'package:wine_ecommerce/routes/routes.dart';
import 'package:wine_ecommerce/view_model/home_screen_model.dart';
import 'package:wine_ecommerce/view_model/product_detail_model.dart';

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
      ],
      builder: (context, child) {
        return MaterialApp(
          title: 'Wine E-Commerce',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: RoutesName.introductionScreenRoute,
          onGenerateRoute: Routes.onGenerateRoute,
        );
      },
    );
  }
}
