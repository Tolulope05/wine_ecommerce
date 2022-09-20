import 'package:flutter/material.dart';
import 'package:wine_ecommerce/database/consts.dart';

import '../model/wine_model.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          GestureDetector(
            child: const Icon(Icons.favorite_border),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              image: const DecorationImage(
                image: AssetImage(wineCard1),
                fit: BoxFit.cover,
              ),
              border: Border.all(
                color: Colors.black,
                width: 8,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ],
      ),
    );
  }
}
