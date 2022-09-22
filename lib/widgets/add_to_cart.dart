import 'package:flutter/material.dart';
import 'package:wine_ecommerce/widgets/button.dart';
import 'package:wine_ecommerce/widgets/icon_button.dart';

class AddCart extends StatelessWidget {
  final VoidCallback onCartClicked;
  const AddCart({
    Key? key,
    required this.onCartClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textController = TextEditingController(text: "1");
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              MyIconButton(
                icon: const Icon(
                  Icons.add,
                ),
                onPress: () {},
              ),
              const SizedBox(height: 10, width: 10),
              SizedBox(
                width: 30,
                height: 30,
                child: TextField(
                  controller: textController,
                  decoration: const InputDecoration(border: InputBorder.none),
                  enabled: false,
                ),
              ),
              MyIconButton(
                icon: const Icon(
                  Icons.remove,
                ),
                onPress: () {},
              ),
            ],
          ),
          Button(
            title: "Add to Cart",
            function: onCartClicked,
          )
        ],
      ),
    );
  }
}
