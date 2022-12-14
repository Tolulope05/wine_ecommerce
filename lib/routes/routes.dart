import 'package:flutter/material.dart';
import 'package:wine_ecommerce/model/wine_model.dart';
import 'package:wine_ecommerce/routes/route_name.dart';
import 'package:wine_ecommerce/view/authentication_screen/sign_up_screen.dart';
import 'package:wine_ecommerce/view/cart_screen.dart';
import 'package:wine_ecommerce/view/checkout_screen.dart';
import 'package:wine_ecommerce/view/main_screen.dart';
import 'package:wine_ecommerce/view/intro_screen/intro_screen.dart';
import 'package:wine_ecommerce/view/payment_screen.dart';
import 'package:wine_ecommerce/view/product_details_screen.dart';

import '../view/authentication_screen/sign_in_screen.dart';
import '../view/authentication_screen/verify_phone_num.dart';
import '../view/profile/edit_profile_screen.dart';
import '../view/success_payment.dart';

class Routes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.mainRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const MainScreen(),
        );
      case RoutesName.introductionScreenRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const IntroScreen(),
        );
      case RoutesName.cartPageRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const CartScreen(),
        );
      case RoutesName.detailsPageRoute:
        final args = settings.arguments as Wine;
        return MaterialPageRoute(
          builder: (context) => ProductDetailsScreen(wineData: args),
        );
      case RoutesName.checkoutPageRoute:
        return MaterialPageRoute(
          builder: (context) => const CheckoutScreen(),
        );
      case RoutesName.paymentPageRoute:
        return MaterialPageRoute(
          builder: (context) => const PaymentScreen(),
        );
      case RoutesName.paymentSuccess:
        return MaterialPageRoute(
          builder: (context) => const SuccessPayment(),
        );
      case RoutesName.signin:
        return MaterialPageRoute(
          builder: (context) => const SignIn(),
        );
      case RoutesName.signup:
        return MaterialPageRoute(
          builder: (context) => const SignUp(),
        );
      case RoutesName.signupSetupPinCode:
        return MaterialPageRoute(
          builder: (context) => const VerifyPhonenumber(),
        );
      case RoutesName.editUser:
        return MaterialPageRoute(
          builder: (context) => const EditProfileScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text("No Page Found"),
            ),
          ),
        );
    }
  }
}
