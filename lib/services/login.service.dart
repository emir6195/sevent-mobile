import 'package:dio/dio.dart';
import 'package:sevent/core/config.dart';
import 'package:sevent/models/login.model.dart';

class LoginService {
  String baseUrl = Config().baseUrl;
  Dio dio = Dio();
  Future<LoginResponseModel?> login(LoginRequestModel loginRequestModel) async {
    String path = "$baseUrl/api/user/login";
    var response = await dio.post(path, data: loginRequestModel);
    if (response.statusCode == 200) {
      LoginResponseModel loginResponseModel =
          LoginResponseModel.fromJson(response.data);
      return loginResponseModel;
    } else {
      return null;
    }
  }
}
