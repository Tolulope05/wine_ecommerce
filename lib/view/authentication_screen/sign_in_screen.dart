import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wine_ecommerce/database/consts.dart';
import 'package:wine_ecommerce/widgets/button.dart';

import '../../view_model/authentication_screen_model.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthScreenModel model = Provider.of<AuthScreenModel>(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    model.goBack(context);
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: Icon(Icons.chevron_left_outlined),
                  ),
                ),
                Text(
                  "Sign In",
                  style: Theme.of(context).textTheme.headline6,
                ),
                const SizedBox(height: 10),
                const Text(
                  "By continuing, you may recieve sms for verification. Message and Data rate may apply.",
                ),
                const SizedBox(height: 10),
                SizedBox(
                  child: TextfieldInputForm(
                    labelText: "Email",
                    textcontroller: model.emailController,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  child: TextfieldInputForm(
                    labelText: "Password",
                    textcontroller: model.passwordController,
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {},
                  child: const Text("Forgot Password?"),
                ),
                const SizedBox(height: 25),
                Button(
                  title: "Sign In",
                  function: () {
                    // Sign in with Email and Password then navigate back to where you are before
                    model.goBack(context);
                  },
                ),
                const SizedBox(height: 25),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey.shade300,
                        thickness: 1,
                      ),
                    ),
                    const Text("OR"),
                    Expanded(
                      child: Divider(
                        color: Colors.grey.shade300,
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Button(
                  title: "Sign In with Google",
                  function: () {
                    // Sign in with Google then navigate back to where you are before
                    model.goBack(context);
                  },
                  backgroundcolor: Colors.white,
                  textColor: wineColor,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      "Dont have an account?",
                      style: TextStyle(),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Sign in with Email and Password then navigate back to where you are before
                        model.goToSignUp(context);
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: wineColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextfieldInputForm extends StatelessWidget {
  final TextEditingController textcontroller;
  final String labelText;
  final bool isObscure;
  const TextfieldInputForm({
    required this.labelText,
    required this.textcontroller,
    this.isObscure = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade500),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: textcontroller,
        obscureText: isObscure,
        decoration: InputDecoration(
          label: Text(labelText),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
