import 'dart:convert';

import 'package:faith_pharm/constants.dart';
import 'package:faith_pharm/helper/api.dart';
import 'package:faith_pharm/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserServices {
  Future<UserModel> getUserById(String id) async {
    String? token = await getToken();

    var data = await Api().get(
      url: '$baseUrl/user/find/$id',
      token: token,
    );

    return UserModel.fromMap(data);
  }

  Future<List<UserModel>> getAllUsers() async {
    String? token = await getToken();

    var data = await Api().get(
      url: '$baseUrl/user/',
      token: token,
    );

    List<UserModel> users = [];
    for (int i = 0; i < data.length; i++) {
      users.add(
        UserModel.fromMap(data[i]),
      );
    }
    return users;
  }

  Future<void> deleteUser(String id) async {
    String? token = await getToken();
    var data = await Api().delete(
      url: '$baseUrl/user/delete/$id',
      token: token,
    );
    return data;
  }

  Future<void> editUser(String id, UserModel userModel) async {
    String? token = await getToken();
    String bodyJson = json.encode(userModel.editToJson());

    var data = await Api().put(
      url: '$baseUrl/user/update/$id',
      body: bodyJson,
      token: token,
    );

    return data;
  }

  Future<String?> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }
}
