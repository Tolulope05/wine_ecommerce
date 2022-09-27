import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../../view_model/authentication_screen_model.dart';
import '../../view_model/cart_screen_model.dart';
import '../../view_model/checkout_screen_model.dart';
import '../../view_model/home_screen_model.dart';
import '../../view_model/intro_screen_model.dart';
import '../../view_model/payment_screen_model.dart';
import '../../view_model/product_detail_model.dart';
import '../../view_model/profile_screen_model.dart';

class ProvidersServices {
  /// App Provider Core
  static List<SingleChildWidget> appProviders = [
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
    ChangeNotifierProvider<ProfileScreenModel>(
      create: (_) => ProfileScreenModel(),
    ),
    ChangeNotifierProvider<AuthScreenModel>(
      create: (_) => AuthScreenModel(),
    ),
  ];
}
