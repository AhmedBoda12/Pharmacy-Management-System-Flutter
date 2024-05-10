import 'package:faith_pharm/constants.dart';
import 'package:faith_pharm/helper/api.dart';
import 'package:faith_pharm/models/product_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProductServices {
  Future<List<ProductModel>> getAllProducts() async {
    String? token = await getToken();

    var data = await Api().get(
      url: '$baseUrl/product/',
      token: token,
    );
    List<ProductModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(ProductModel.fromJson(data[i]));
    }
    return productList;
  }

  Future<ProductModel> getProductById(String id) async {
    String? token = await getToken();

    var data = await Api().get(
      url: '$baseUrl/product/find/$id',
      token: token,
    );
    return ProductModel.fromJson(data);
  }

  // Function to retrieve token from SharedPreferences
  Future<String?> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }
}
