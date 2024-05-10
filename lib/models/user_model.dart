import 'dart:convert';

class UserModel {
  final String? id;
  final String username;
  final String? firstname;
  final String? lastname;
  final String? email;
  final bool? isAdmin;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? accessToken;
  final String? password;

  UserModel({
    this.id,
    required this.username,
    this.firstname,
    this.lastname,
    this.email,
    this.password,
    this.isAdmin,
    this.createdAt,
    this.updatedAt,
    this.accessToken,
  });

  factory UserModel.fromMap(json) => UserModel(
        id: json["_id"],
        username: json["username"],
        firstname: json["firstname"],
        lastname: json["lastname"],
        email: json["email"],
        isAdmin: json["isAdmin"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        accessToken: json["accessToken"],
      );

  factory UserModel.fromJson(String str) => UserModel.fromMap(json.decode(str));

  Map<String, dynamic> regisetToJson() {
    return {
      'username': username,
      'firstname': firstname,
      'lastname': lastname,
      'email': email,
      'password': password,
    };
  }

  Map<String, dynamic> loginToJson() {
    return {
      "username": username,
      "password": password,
    };
  }
}
