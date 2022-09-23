import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wine_ecommerce/database/consts.dart';
import 'package:wine_ecommerce/view_model/cart_screen_model.dart';
import 'package:wine_ecommerce/widgets/button.dart';
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
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  CartItem(),
                ],
              ),
            ),
          ),
          const Spacer(),
          Column(
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                padding: const EdgeInsets.only(top: 5),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: greyColor.withOpacity(0.5),
                      width: 1.0,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Total Price",
                      style: TextStyle(
                        fontSize: 16,
                        color: wineColor,
                      ),
                    ),
                    Text(
                      "\$ 494.00",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: wineColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 8),
                child: Button(title: "Proceed to Checkout", function: () {}),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
