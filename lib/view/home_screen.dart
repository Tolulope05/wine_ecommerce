import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wine_ecommerce/view_model/home_screen_model.dart';
import 'package:wine_ecommerce/widgets/wine_card.dart';

import '../database/consts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeScreenModel model = Provider.of<HomeScreenModel>(
      context,
      listen: false,
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 16),
                  child: Text(
                    "What would you like?",
                    style: TextStyle(
                      color: wineColor,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      color: greyColor,
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: greyColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Search..",
                    labelStyle: const TextStyle(color: greyColor),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
                child: Image.asset("assets/banner.png"),
              ),
              Consumer<HomeScreenModel>(builder: (context, value, child) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => model.changeIndex(index),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  index == model.selectedIndex ? 10 : 8),
                          decoration: BoxDecoration(
                              color: index == model.selectedIndex
                                  ? greyColor.withOpacity(0.2)
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(16)),
                          child: Center(
                            child: Text(
                              model.tags[index],
                              style: TextStyle(
                                color: index == model.selectedIndex
                                    ? wineColor
                                    : greyText,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: model.tags.length,
                  ),
                );
              }),
              FutureBuilder(
                future: model.getWinefromDB(),
                builder: (context, snapshot) {
                  return GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: model.wineList.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.8,
                    ),
                    itemBuilder: ((context, index) {
                      var wine = model.wineList[index];
                      return WineCard(
                        wine: wine,
                      );
                    }),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
