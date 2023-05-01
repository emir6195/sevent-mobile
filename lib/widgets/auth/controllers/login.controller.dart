import 'package:flutter/material.dart';
import 'package:sevent/core/alerts.dart';
import 'package:sevent/core/input_validators.dart';
import 'package:sevent/models/login.model.dart';
import 'package:sevent/services/login.service.dart';

class LoginController {
  LoginService loginService = LoginService();
  InputValidators inputValidators = InputValidators();
  Alerts alerts = Alerts();
  String passwordAlert =
      'Şifreniz bir büyük harf, bir küçük harf, rakam ve karakter içermelidir. Şifreniz 8 haneden uzun olmalıdır.';
  String usernameAlert = 'Lütfen geçerli bir e-posta adresi giriniz.';
  String emptyUsernameAlert = "Lütfen kullanıcı adınızı girin.";
  String emptyPasswordAlert = "Lütfen şifrenizi girin.";

  Future<void> login(
      BuildContext context, String email, String password) async {
    if (email != "") {
      if (inputValidators.isValidEmail(email)) {
        if (password != "") {
          if (inputValidators.isValidPassword(password)) {
            LoginResponseModel? loginResponseModel = await loginService.login(
              LoginRequestModel(
                email: email,
                password: password,
              ),
            );
          } else {
            alerts.alertInfo(context, passwordAlert);
          }
        } else {
          alerts.alertInfo(context, emptyPasswordAlert);
        }
      } else {
        alerts.alertInfo(context, usernameAlert);
      }
    } else {
      alerts.alertInfo(context, emptyUsernameAlert);
    }
  }
}
