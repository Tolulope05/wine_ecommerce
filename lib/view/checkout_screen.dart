import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wine_ecommerce/widgets/custom_tab_view.dart';

import '../database/consts.dart';
import '../view_model/checkout_screen_model.dart';
import '../widgets/button.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CheckoutScreenModel model = Provider.of<CheckoutScreenModel>(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: lightWine,
          leading: IconButton(
              onPressed: () => model.getBack(context),
              icon: const Icon(
                Icons.arrow_back,
                color: wineColor,
              )),
          title: const Text(
            "Checkout",
            style: TextStyle(
              color: wineColor,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          )),
      body: Stack(
        children: [
          Column(
            children: [
              CustomTabView(
                changeTab: (int int) => model.chnagetabview(int),
                index: model.tabView,
                tags: model.tags,
              ),
              if (model.tabView == 0)
                Column(
                  children: [
                    ListTile(
                      leading: const Icon(
                        Icons.access_time_sharp,
                      ),
                      title: Text(
                        "30-40 mins",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.pin_drop,
                      ),
                      title: Text(
                        "13 OakView, Lagos Nigeria",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    Container(
                      height: 220,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                      decoration:
                          BoxDecoration(color: greyColor.withOpacity(0.2)),
                      child: const Center(
                        child: Text("Map View"),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 15,
                        right: 15,
                        top: 5,
                        bottom: 10,
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      height: 45,
                      child: TextField(
                        controller: model.locationController,
                        onTap: () {},
                        onChanged: (value) {
                          model.locationController.text = value;
                        },
                        decoration:
                            const InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ],
                )
              else
                Column(
                  children: [
                    ListTile(
                      leading: const Icon(
                        Icons.access_time_sharp,
                      ),
                      title: Text(
                        "Available on XX/YY/ZZZZ",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.pin_drop,
                      ),
                      title: Text(
                        "13 OakView, Lagos Nigeria",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    Container(
                      height: 220,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                      decoration:
                          BoxDecoration(color: greyColor.withOpacity(0.2)),
                      child: const Center(
                        child: Text("Map Guide showing our Pickup Locattion"),
                      ),
                    ),
                  ],
                )
            ],
          ),
          Positioned(
            bottom: 5,
            left: 1,
            right: 1,
            child: Column(
              children: [
                Container(
                  margin:
                      const EdgeInsets.only(bottom: 20, right: 15, left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Total Price:",
                        style: TextStyle(
                          color: wineColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "\$2999",
                        style: TextStyle(
                          color: wineColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Button(
                  function: () => model.goToPayment(context),
                  title: "Proceed to Payment",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
