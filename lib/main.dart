import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wine_ecommerce/database/consts.dart';
import 'package:wine_ecommerce/repository/providers/providers.dart';
import 'package:wine_ecommerce/routes/route_name.dart';
import 'package:wine_ecommerce/routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: ProvidersServices.appProviders,
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
