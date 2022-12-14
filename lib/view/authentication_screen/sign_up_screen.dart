import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:provider/provider.dart';
import 'package:wine_ecommerce/database/consts.dart';

import '../../view_model/authentication_screen_model.dart';
import '../../widgets/field_input.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

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
              InkWell(
                onTap: () {
                  model.goBack(context);
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  child: const Icon(Icons.chevron_left_outlined),
                ),
              ),
              Text(
                "What is your name?",
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(height: 10),
              const Text(
                "Let us know you better!",
              ),
              const SizedBox(height: 20),
              Flexible(
                child: Row(
                  children: [
                    Flexible(
                      child: FieldInput(
                        controller: model.firstnameController,
                        labelText: "First Name",
                      ),
                    ),
                    const SizedBox(width: 10),
                    Flexible(
                      child: FieldInput(
                        controller: model.lastnameController,
                        labelText: "Last Name",
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Flexible(
                child: FieldInput(
                  controller: model.emailSignUpController,
                  labelText: "Email address",
                ),
              ),
              const SizedBox(height: 20),
              Flexible(
                child: IntlPhoneField(
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    border: InputBorder.none,
                  ),
                  initialCountryCode: 'NG',
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () => model.goToSignIn(context, false),
                child: const Text(
                  "Already have an account?",
                  style: TextStyle(color: Colors.blue),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          model.goToverifyPhone(context);
        },
        backgroundColor: wineColor,
        child: Icon(Icons.chevron_right),
      ),
    );
  }
}
