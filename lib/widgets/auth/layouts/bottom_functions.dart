import 'package:flutter/material.dart';

class LoginBottomFunctions extends StatelessWidget {
  const LoginBottomFunctions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          child: const Text("Hesabınız yok mu? Üye olmak için tıklayın."),
        ),
        TextButton(
          onPressed: () {},
          child: const Text("Şifremi unuttum."),
        ),
      ],
    );
  }
}
