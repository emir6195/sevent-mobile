import 'package:flutter/material.dart';

class ButtonStyles {
  OutlineInputBorder circularInputStyle() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.horizontal(
        left: Radius.circular(50),
        right: Radius.circular(50),
      ),
    );
  }

  ButtonStyle mainButtonStyle(BuildContext context) {
    return ButtonStyle(
      // backgroundColor: MaterialStateProperty.all<Color>(Colors.white10),
      elevation: const MaterialStatePropertyAll(3),
      fixedSize: MaterialStatePropertyAll(
        Size(MediaQuery.of(context).size.width - 8, 65),
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          // side: BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}
