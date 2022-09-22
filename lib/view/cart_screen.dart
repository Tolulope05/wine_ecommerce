import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wine_ecommerce/database/consts.dart';
import 'package:wine_ecommerce/view_model/cart_screen_model.dart';
import 'package:wine_ecommerce/widgets/cart_items.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

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
      body: Column(
        children: [
          CartItem(),
        ],
      ),
    );
  }
}
