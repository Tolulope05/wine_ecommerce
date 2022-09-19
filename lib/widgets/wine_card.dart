import 'package:flutter/material.dart';
import 'package:wine_ecommerce/database/consts.dart';

class WineCard extends StatelessWidget {
  const WineCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double num = 199.99;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Stack(children: [
      Container(
        // width: deviceWidth * 0.6,
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
                image: const DecorationImage(
                  image: AssetImage(wineCard1),
                  fit: BoxFit.contain,
                ),
                // border: Border.all(
                //   color: Colors.black,
                //   width: 3,
                // ),
                borderRadius: BorderRadius.circular(12),
              ),
            )),
            const SizedBox(height: 10),
            const Text(
              "Domaine Carneros Le Reve Blanc 2014",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: wineColor,
                fontSize: 16,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$$num",
                  style: const TextStyle(
                    color: wineColor,
                    fontSize: 16,
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
          child:
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)))
    ]);
  }
}
