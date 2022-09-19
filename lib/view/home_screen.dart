import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wine_ecommerce/view_model/home_screen_model.dart';
import 'package:wine_ecommerce/widgets/wine_card.dart';

import '../database/consts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var selectedIndex = 1;
  void changeIndex(int index) {
    selectedIndex = index;
    setState(() {});
    print("New number is $selectedIndex");
  }

  @override
  Widget build(BuildContext context) {
    HomeScreenModel model = Provider.of<HomeScreenModel>(context);
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
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
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
                    labelText: "Search...",
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return GestureDetector(
                      onTap: () => changeIndex(index),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: index == selectedIndex ? 25 : 8),
                        decoration: BoxDecoration(
                            color: index == selectedIndex
                                ? greyColor.withOpacity(0.2)
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(16)),
                        child: Center(
                          child: Text(
                            model.tags[index],
                            style: TextStyle(
                              color:
                                  index == selectedIndex ? wineColor : greyText,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                  itemCount: model.tags.length,
                ),
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: ((context, index) {
                  return WineCard(
                    index: index,
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
