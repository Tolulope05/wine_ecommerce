import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wine_ecommerce/widgets/custom_tab_view.dart';

import '../database/consts.dart';
import '../view_model/checkout_screen_model.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CheckoutScreenModel model = Provider.of<CheckoutScreenModel>(context);
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
            "Checkout",
            style: TextStyle(
              color: wineColor,
            ),
          )),
      body: Column(
        children: [
          CustomTabView(changeTab: (int) {}, index: 1),
        ],
      ),
    );
  }
}
