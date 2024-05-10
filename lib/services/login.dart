import 'package:faith_pharm/constants.dart';
import 'package:faith_pharm/helper/api.dart';
import 'package:faith_pharm/models/user_model.dart';

class Login {
  Future<UserModel> login(UserModel user) async {
    Map<String, dynamic> data = await Api().post(
        url: '$baseUrl/auth/login',
        body: user.loginToJson(),
        token: user.token);

    return UserModel.fromJson(data);
  }
}
