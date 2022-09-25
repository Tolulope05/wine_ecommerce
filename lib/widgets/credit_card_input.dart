import 'package:flutter/material.dart';

class CreditCardInput extends StatelessWidget {
  final String title;
  final IconData? icon;
  final bool isObscure;

  const CreditCardInput({
    Key? key,
    required this.title,
    this.icon,
    this.isObscure = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                  SizedBox(
                    height: 25,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: TextField(
                      obscureText: isObscure,
                      decoration:
                          const InputDecoration(border: InputBorder.none),
                    ),
                  )
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(icon),
              )
            ],
          ),
        ],
      ),
    );
  }
}
