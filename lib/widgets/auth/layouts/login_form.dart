import 'package:flutter/material.dart';
import 'package:sevent/styles/buttons.dart';
import 'package:sevent/styles/text.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

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
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Kullanıcı Adı',
                  border: ButtonStyles().circularInputStyle(),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Şifre',
                  border: ButtonStyles().circularInputStyle(),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
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
