import 'dart:developer';

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

    return data.map((e) => UserModel.fromMap(e)).toList();
  }

  Future<void> deleteUser(String id) async {
    String? token = await getToken();
    var data = await Api().delete(
      url: '$baseUrl/user/delete/$id',
      token: token,
    );

    return data;
  }

  Future<UserModel> editUser(String id, UserModel userModel) async {
    String? token = await getToken();
    var data = await Api().put(
      url: '$baseUrl/user/edit/$id',
      body: userModel.editToJson(),
      token: token,
    );
    log(data);
    return UserModel.fromMap(data);
  }

  Future<String?> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }
}
