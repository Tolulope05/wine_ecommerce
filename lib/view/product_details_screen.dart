import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wine_ecommerce/database/consts.dart';
import 'package:wine_ecommerce/widgets/add_to_cart.dart';

import '../view_model/product_detail_model.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductDetailsModel model = Provider.of<ProductDetailsModel>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: lightWine,
        leading: GestureDetector(
          onTap: () {
            model.getBack(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: wineColor,
          ),
        ),
        actions: [
          GestureDetector(
            child: const Icon(
              Icons.favorite_border,
              color: wineColor,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
              color: lightWine,
              image: const DecorationImage(
                image: AssetImage(wineCard1),
                fit: BoxFit.contain,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
            child: const Text(
              "Description",
              style: TextStyle(
                color: wineColor,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Check your proxy settings or contact your network administrator to make sure that the proxy server is working. If you don't believe you should be using a proxy server: Go to the Chrome menu",
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: greyText),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 15),
            child: Text(
              "Nutritional Values",
              style: TextStyle(
                color: wineColor,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Text(
                  "Calories:",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 16),
                ),
                Text(
                  " 5g/0.03 gal",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: greyText),
                ),
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Text("Sugar:",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 16)),
                Text(
                  " 23kcal/0.03 gal",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: greyText),
                ),
                Expanded(child: Container()),
              ],
            ),
          ),
          Expanded(child: Container()),
          const AddCart(),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
