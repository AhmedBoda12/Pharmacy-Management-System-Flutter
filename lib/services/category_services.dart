import 'package:faith_pharm/constants.dart';
import 'package:faith_pharm/helper/api.dart';
import 'package:faith_pharm/models/category_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CategoryServices {
  Future<List<CategotyModel>> getAllCategories() async {
    String? token = await getToken();
    var data = await Api().get(
      url: '$baseUrl/category/',
      token: token,
    );

    List<CategotyModel> categories = [];
    for (int i = 0; i < data.length; i++) {
      categories.add(CategotyModel.fromMap(data[i]));
    }

    return categories;
  }

  Future<String?> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }
}
