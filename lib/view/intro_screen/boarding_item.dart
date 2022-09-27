import 'package:flutter/material.dart';

class BoardingItem extends StatelessWidget {
  final Widget widget;
  final String titleText;
  final String subtitleText;
  const BoardingItem({
    Key? key,
    required this.widget,
    required this.titleText,
    required this.subtitleText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10.0),
                child: widget,
              ),
              Container(
                padding: const EdgeInsets.all(35.0),
                child: Column(
                  children: [
                    Text(
                      subtitleText,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Color(0xff131313),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      titleText,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Color(0xff131313),
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
