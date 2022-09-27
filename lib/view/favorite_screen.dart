import 'package:flutter/material.dart';
import 'package:wine_ecommerce/model/wine_model.dart';
import 'package:wine_ecommerce/widgets/wine_card.dart';

import '../database/consts.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox.shrink(),
        centerTitle: true,
        title: const Text(
          "Favorite Wine",
          style: TextStyle(
            color: wineColor,
          ),
        ),
        elevation: 0,
        backgroundColor: lightWine,
      ),
      body: GridView.builder(
        // physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: ((context, index) {
          var wine = Wine.fromJson(
            {
              "id": 2,
              "name": "Domaine Leroy Musigny Grand Cru",
              "description":
                  "Another Burgundy offering, Domaine Leroy practices biodynamic farming.",
              "price": "19,702",
              "imageUrl": wineCard2,
              "sugar": "0.8g",
              "calories": " 111calories"
            },
          );
          return WineCard(
            wine: wine,
          );
        }),
      ),
    );
  }
}
