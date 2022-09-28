import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wine_ecommerce/database/consts.dart';
import 'package:wine_ecommerce/view/intro_screen/boarding_item.dart';
import 'package:wine_ecommerce/view_model/intro_screen_model.dart';
import 'package:wine_ecommerce/widgets/button.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    IntroScreenModel introProvider = Provider.of<IntroScreenModel>(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  introProvider.goHome(context);
                },
                child: const Text(
                  "Skip",
                  style: TextStyle(
                    color: greyColor,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Flexible(
              child: TabBarView(
                controller: controller,
                children: [
                  BoardingItem(
                    widget: introProvider.getImage(
                      introProvider.svgIcons[0],
                    ),
                    titleText: introProvider.titleText[0],
                    subtitleText: introProvider.subtitleText[0],
                  ),
                  BoardingItem(
                    widget: introProvider.getImage(
                      introProvider.svgIcons[1],
                    ),
                    titleText: introProvider.titleText[1],
                    subtitleText: introProvider.subtitleText[1],
                  ),
                  BoardingItem(
                    widget: introProvider.getImage(
                      introProvider.svgIcons[2],
                    ),
                    titleText: introProvider.titleText[2],
                    subtitleText: introProvider.subtitleText[2],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TabPageSelector(
                  controller: controller,
                  selectedColor: wineColor,
                  color: Colors.grey.shade200,
                  borderStyle: BorderStyle.none,
                  indicatorSize: 16,
                ),
                Button(
                  title: controller.index == 2 ? "Home" : "Next",
                  function: () {
                    if (controller.index == 2) {
                      introProvider.goHome(context);
                    } else {
                      controller.animateTo(
                        controller.index + 1,
                        curve: Curves.easeIn,
                        duration: const Duration(seconds: 1),
                      );
                    }
                  },
                ),
              ],
            ),
            const SizedBox(height: 25)
          ],
        ),
      ),
    );
  }
}
