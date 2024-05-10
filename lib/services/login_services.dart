import 'package:faith_pharm/constants.dart';
import 'package:faith_pharm/helper/api.dart';
import 'package:faith_pharm/models/user_model.dart';

class LoginServices {
  Future<UserModel> login(UserModel user) async {
    Map<String, dynamic> data = await Api().post(
      url: '$baseUrl/auth/login',
      body: user.loginToJson(),
      token: null,
    );

    return UserModel.fromJson(data);
  }
}
