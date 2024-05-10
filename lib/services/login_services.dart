import 'package:faith_pharm/constants.dart';
import 'package:faith_pharm/helper/api.dart';
import 'package:faith_pharm/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginServices {
  Future<UserModel> login(UserModel userModel) async {
    var data = await Api().post(
      url: '$baseUrl/auth/login',
      body: userModel.loginToJson(),
    );
    String? token = data["accessToken"];
    if (token != null) {
      await saveToken(token);
    }

    return UserModel.fromMap(data);
  }

  //Function to save token in SharedPreferences
  Future<void> saveToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
  }
}
