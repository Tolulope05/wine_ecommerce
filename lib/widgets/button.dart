import 'package:flutter/material.dart';
import 'package:wine_ecommerce/database/consts.dart';

class Button extends StatelessWidget {
  final String title;
  final VoidCallback function;
  const Button({
    Key? key,
    required this.title,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: wineColor,
      ),
      child: GestureDetector(
        onTap: function,
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
