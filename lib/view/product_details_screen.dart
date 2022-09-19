import 'package:flutter/material.dart';

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
            height: kToolbarHeight,
          ),
          Center(
            child: Text("Details Page is "),
          )
        ],
      ),
    );
  }
}
