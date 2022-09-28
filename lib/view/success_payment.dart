import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wine_ecommerce/widgets/button.dart';

import '../database/consts.dart';
import '../view_model/payment_screen_model.dart';

class SuccessPayment extends StatelessWidget {
  const SuccessPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PaymentScreenmodel model = Provider.of<PaymentScreenmodel>(context);
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Container(),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: Image.asset(
                wineCheer,
                width: MediaQuery.of(context).size.width * 0.4,
              ),
            ),
            const Text(
              "Done!",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Success. Your order was successfully made!",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black54,
              ),
            ),
            Flexible(child: Container()),
            Button(
              title: "Home Page",
              function: () => model.getToHome(context),
            )
          ],
        ),
      ),
    );
  }
}
