import 'package:faith_pharm/constants.dart';
import 'package:faith_pharm/helper/api.dart';
import 'package:faith_pharm/models/user_model.dart';

class SignupServices {
  Future<dynamic> signUp(UserModel user) async {
    Map<String, dynamic> data = await Api().post(
      url: '$baseUrl/auth/register',
      body: user,
      token: null,
    );

    return UserModel.fromJson(data);
  }
}
