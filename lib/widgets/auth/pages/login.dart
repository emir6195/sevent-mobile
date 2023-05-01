import 'package:flutter/material.dart';
import 'package:sevent/widgets/auth/layouts/app_logo.dart';
import 'package:sevent/widgets/auth/layouts/bottom_functions.dart';
import 'package:sevent/widgets/auth/layouts/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          runSpacing: 30,
          children: [
            const AppLogo(),
            LoginForm(),
            const Center(child: LoginBottomFunctions()),
          ],
        ),
      ),
    );
  }
}
