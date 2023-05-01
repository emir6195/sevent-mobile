import 'package:flutter/material.dart';

class InputStyles {
  OutlineInputBorder circularInputStyle() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.horizontal(
        left: Radius.circular(50),
        right: Radius.circular(50),
      ),
    );
  }

  TextFormField seventFormField(
      String labelText, TextEditingController controller,
      [bool obscure = false]) {
    return TextFormField(
      obscureText: obscure,
      controller: controller,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        labelText: labelText,
        border: circularInputStyle(),
      ),
    );
  }
}
