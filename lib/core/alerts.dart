import 'package:flutter/material.dart';

class Alerts {
  alertInfo(context, String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text),
      ),
    );
  }
}
