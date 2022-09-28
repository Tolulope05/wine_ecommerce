import 'package:flutter/material.dart';
import 'package:wine_ecommerce/database/consts.dart';

class Button extends StatelessWidget {
  final String title;
  final VoidCallback function;
  final Color backgroundcolor;
  final Color textColor;
  const Button({
    Key? key,
    required this.title,
    required this.function,
    this.backgroundcolor = wineColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: backgroundcolor,
            border: Border.all(
              color: wineColor,
            )),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
