import 'package:flutter/material.dart';
import 'package:wine_ecommerce/database/consts.dart';

class CartItem extends StatelessWidget {
  const CartItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceSize = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(
                color: greyColor.withOpacity(0.6),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              wineCard1,
              height: 80,
            ),
          ),
          SizedBox(
            height: 80,
            child: Column(
              children: [
                SizedBox(
                  width: deviceSize * 0.65,
                  child: const Text(
                    "This is the wine name,full details and soon, stayed tuned  Tolu blah blah jdjdjddjdjdhdhhhdhdh",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: deviceSize * 0.65,
                  child: Row(
                    children: [
                      const Text(
                        "\$200.00",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: const Icon(Icons.remove),
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: lightWine,
                              border: Border.all(
                                color: greyColor.withOpacity(0.6),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Text(
                              " 2",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const Icon(Icons.add),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
