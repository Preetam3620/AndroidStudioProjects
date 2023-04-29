import 'package:dio/dio.dart';

class LoginResponse {
  bool status;
  bool isAdmin;
  String refresh;
  String access;
  String loggedIn;
  int id;

  LoginResponse(
      {this.status,
      this.isAdmin,
      this.refresh,
      this.access,
      this.loggedIn,
      this.id});

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      status: json['status'] ?? "",
      isAdmin: json['is_admin'] ?? "",
      refresh: json['refresh'] ?? "",
      access: json['access'] ?? "",
      loggedIn: json['loggedIn'] ?? "",
      id: json['id'] ?? "",
    );
  }

  factory LoginResponse.getLoginResponseFromHttpResponse(
      Response<dynamic> response) {
    return LoginResponse(
      status: response.data['status'],
      isAdmin: response.data['is_admin'],
      refresh: response.data['refresh'],
      access: response.data['access'],
      loggedIn: response.data['loggedIn'],
      id: response.data['id'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['is_admin'] = this.isAdmin;
    data['refresh'] = this.refresh;
    data['access'] = this.access;
    data['loggedIn'] = this.loggedIn;
    data['id'] = this.id;
    return data;
  }
}
