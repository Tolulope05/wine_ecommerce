import 'package:flutter/material.dart';
import 'package:wine_ecommerce/database/consts.dart';

class CustomTabView extends StatefulWidget {
  final Function(int) changeTab;
  final int index;
  final List<String> tags;
  const CustomTabView({
    Key? key,
    required this.changeTab,
    required this.index,
    required this.tags,
  }) : super(key: key);

  @override
  State<CustomTabView> createState() => _CustomTabViewState();
}

class _CustomTabViewState extends State<CustomTabView> {
  Widget _buildTags(int index) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          widget.changeTab(index);
        },
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 30,
          ),
          decoration: BoxDecoration(
            color: widget.index == index ? wineColor : null,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              widget.tags[index],
              style: TextStyle(
                color: widget.index != index ? Colors.black : Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade200,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: widget.tags
            .asMap()
            .entries
            .map((MapEntry map) => _buildTags(map.key))
            .toList(),
      ),
    );
  }
}
