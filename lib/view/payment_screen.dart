import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:wine_ecommerce/view_model/payment_screen_model.dart';

import '../database/consts.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PaymentScreenmodel model = Provider.of<PaymentScreenmodel>(context);
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
    );
  }
}
