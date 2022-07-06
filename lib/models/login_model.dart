// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({
   required this.success,
   required this.user,
  });

  bool success;
  Map<String, String>? user;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    success: json["success"] == null ? null : json["success"],
    user: json["user"] == null ? null : Map.from(json["user"]).map((k, v) => MapEntry<String, String>(k, v)),
  );

  Map<String, dynamic> toJson() => {
    "success": success == null ? null : success,
    "user": user == null ? null : Map.from(user!).map((k, v) => MapEntry<String, dynamic>(k, v)),
  };
}
