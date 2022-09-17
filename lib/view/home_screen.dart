import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wine_ecommerce/view_model/home_screen_model.dart';

import '../database/consts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    void changeIndex(int index) {
      _selectedIndex == index;
    }

    HomeScreenModel model = Provider.of<HomeScreenModel>(context);
    return Scaffold(
      body: SafeArea(
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
                  labelStyle: TextStyle(color: greyColor),
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
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
              child: Image.asset("assets/banner.png"),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return GestureDetector(
                    onTap: () {
                      changeIndex(index);
                      print(index);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: _selectedIndex == index
                              ? greyText
                              : Colors.transparent),
                      child: Center(
                        child: Text(
                          model.tags[index],
                          style: const TextStyle(color: greyText, fontSize: 18),
                        ),
                      ),
                    ),
                  );
                }),
                separatorBuilder: (context, index) => Container(
                  width: 30,
                ),
                itemCount: model.tags.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
