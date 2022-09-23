import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wine_ecommerce/database/consts.dart';
import 'package:wine_ecommerce/view_model/intro_screen_model.dart';
import 'package:wine_ecommerce/widgets/button.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    IntroScreenModel introProvider = Provider.of<IntroScreenModel>(
      context,
    );
    PageController introPagecontroller = PageController();
    return Scaffold(
        body: PageView.builder(
      // physics: const NeverScrollableScrollPhysics(),
      controller: introPagecontroller,

      itemBuilder: ((context, index) {
        return SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: TextButton(
                      onPressed: () {
                        introProvider.goHome(context);
                      },
                      child: const Text(
                        "Skip",
                        style: TextStyle(
                          color: greyColor,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(20),
                child: introProvider.getImage(introProvider.svgIcons[index]),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Text(
                      introProvider.subtitleText[index],
                      style: const TextStyle(
                        color: greyColor,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  introProvider.titleText[index],
                  style: const TextStyle(
                    color: wineColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Expanded(child: Container()),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: index == 0 ? 45 : 30,
                          height: index == 0 ? 10 : 5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: index == 0 ? wineColor : greyColor,
                          ),
                        ),
                        Container(
                          width: index == 1 ? 45 : 30,
                          height: index == 1 ? 10 : 5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: index == 1 ? wineColor : greyColor,
                          ),
                        ),
                        Container(
                          width: index == 2 ? 45 : 30,
                          height: index == 2 ? 10 : 5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: index == 2 ? wineColor : greyColor,
                          ),
                        ),
                      ],
                    ),
                    Button(
                      title: index == 2 ? "Shop" : "Next",
                      function: () {
                        index == 2
                            ? introProvider.goHome(context)
                            : introPagecontroller.nextPage(
                                duration: const Duration(seconds: 1),
                                curve: Curves.easeIn,
                              );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
      itemCount: 3,
    ));
  }
}
