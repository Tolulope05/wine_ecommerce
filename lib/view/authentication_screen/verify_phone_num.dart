import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../database/consts.dart';
import '../../view_model/authentication_screen_model.dart';

class VerifyPhonenumber extends StatelessWidget {
  const VerifyPhonenumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthScreenModel model = Provider.of<AuthScreenModel>(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  model.goBack(context);
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  child: const Icon(Icons.chevron_left_outlined),
                ),
              ),
              Text(
                "verify your OTP",
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(height: 10),
              const Text(
                "Let us know you better!",
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: wineColor,
        child: Icon(Icons.chevron_right),
      ),
    );
  }
}
