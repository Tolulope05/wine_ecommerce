import 'package:flutter/cupertino.dart';
// import 'package:wine_ecommerce/repository/services/auth_services.dart';
import 'package:wine_ecommerce/repository/services/navigation_services.dart';

class AuthScreenModel extends ChangeNotifier {
  final NavigationServices _navigationServices = NavigationServices();
  // final AuthServices _authServices = AuthServices();

  //LOGIN
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // SIGNUP
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController emailSignUpController = TextEditingController();

  //Navigation
  void goBack(BuildContext context) {
    _navigationServices.navigateToPreviousPage(context);
  }

  void goToSignUp(BuildContext context) {
    _navigationServices.navigateToSignupPage(context);
  }

  void goToSignIn(BuildContext context, [bool isPop = true]) {
    _navigationServices.navigateToLoginPage(context, isPop = isPop);
  }
}
