import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wine_ecommerce/view_model/cart_screen_model.dart';

import '../database/consts.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CartScreenModel model = Provider.of<CartScreenModel>(context);
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: lightWine,
          leading: IconButton(
              onPressed: () => model.getBack(context),
              icon: const Icon(
                Icons.arrow_back,
                color: wineColor,
              )),
          title: const Text(
            "Cart",
            style: TextStyle(
              color: wineColor,
            ),
          )),
      body: Column(),
    );
  }
}
