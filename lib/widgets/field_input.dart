import 'package:flutter/material.dart';

class FieldInput extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  const FieldInput({
    Key? key,
    required this.controller,
    required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          label: Text(labelText),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
