import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wine_ecommerce/database/consts.dart';
import 'package:wine_ecommerce/model/wine_model.dart';

import '../view_model/home_screen_model.dart';

class WineCard extends StatelessWidget {
  final Wine wine;
  const WineCard({
    Key? key,
    required this.wine,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeScreenModel model = Provider.of<HomeScreenModel>(context);
    return GestureDetector(
      onTap: () {
        model.goToDetailsPage(context, wine);
      },
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              border: Border.all(
                color: greyColor,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(wine.imageUrl),
                      fit: BoxFit.contain,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                )),
                const SizedBox(height: 10),
                Text(
                  wine.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: wineColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$${wine.price}",
                      style: const TextStyle(
                        color: wineColor,
                        fontSize: 14,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.add_circle_outlined,
                        color: wineColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: 10,
            top: 10,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border),
            ),
          ),
        ],
      ),
    );
  }
}
