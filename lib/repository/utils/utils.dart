import 'package:flutter/material.dart';

class Utils {
  showSnackBar(String? message, BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message!),
        duration: const Duration(seconds: 2),
      ),
    );
  }
  // Show snackbar
  // Show Toast
  // Show bottom Drawer
}
