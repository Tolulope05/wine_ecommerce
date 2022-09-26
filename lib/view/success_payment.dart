import 'package:flutter/material.dart';

import '../database/consts.dart';

class SuccessPayment extends StatelessWidget {
  const SuccessPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(wineCheer),
          ],
        ),
      ),
    );
  }
}
