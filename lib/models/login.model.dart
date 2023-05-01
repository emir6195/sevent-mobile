class LoginRequestModel {
  String? email;
  String? password;

  LoginRequestModel({this.email, this.password});

  LoginRequestModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }
}

class LoginResponseModel {
  String? token;
  bool? success;
  String? message;

  LoginResponseModel({this.token, this.success, this.message});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    success = json['success'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['success'] = this.success;
    data['message'] = this.message;
    return data;
  }
}
