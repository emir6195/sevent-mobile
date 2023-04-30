import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          child: Image.asset('assets/app_logo.png'),
        ),
      ),
    );
  }
}
