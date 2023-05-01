import 'package:flutter/material.dart';
import 'package:sevent/styles/buttons.dart';
import 'package:sevent/styles/inputs.dart';
import 'package:sevent/styles/texts.dart';
import 'package:sevent/widgets/auth/controllers/login.controller.dart';

class LoginForm extends StatelessWidget {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  LoginController loginController = LoginController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          child: Wrap(
            runSpacing: 12,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 6.0),
                child: Text(
                  'Giriş',
                  style: TextStyles().headingText(),
                ),
              ),
              InputStyles().seventFormField(
                "Kullanıcı Adı",
                usernameController,
              ),
              InputStyles().seventFormField(
                "Şifre",
                passwordController,
                true,
              ),
              ElevatedButton(
                onPressed: () => loginController.login(
                    context, usernameController.text, passwordController.text),
                style: ButtonStyles().mainButtonStyle(context),
                child: const Text("Giriş"),
              )
            ],
          ),
        )
      ],
    );
  }
}
