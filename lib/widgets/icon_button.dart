import 'package:flutter/material.dart';
import 'package:wine_ecommerce/database/consts.dart';

class MyIconButton extends StatelessWidget {
  final Icon icon;
  final VoidCallback onPress;
  const MyIconButton({
    Key? key,
    required this.icon,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: midWineColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: GestureDetector(
        onTap: onPress,
        child: icon,
      ),
    );
  }
}
