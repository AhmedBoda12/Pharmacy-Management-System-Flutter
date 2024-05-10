import 'package:faith_pharm/constants.dart';
import 'package:faith_pharm/helper/api.dart';
import 'package:faith_pharm/models/product_model.dart';

class ProductServices {
  Future<List<ProductModel>> getAllProducts() async {
    var data = await Api().get(
      url: '$baseUrl/product/',
      token:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2M2Q1ODQ2MzU3ZmQwNDMxYzM1Njk5ZiIsImlzQWRtaW4iOmZhbHNlLCJpYXQiOjE3MTUyOTY1NzUsImV4cCI6MTcxNTU1NTc3NX0.llQyxJHUpqX1BNb3NTJQ96tBgZKiQLT4fySavV2Bas4',
    );
    List<ProductModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(ProductModel.fromJson(data[i]));
    }
    return productList;
  }

  Future<ProductModel> getProductById(String id) async {
    var data = await Api().get(
      url: '$baseUrl/product/find/$id',
      token:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2M2Q1ODQ2MzU3ZmQwNDMxYzM1Njk5ZiIsImlzQWRtaW4iOmZhbHNlLCJpYXQiOjE3MTUyOTY1NzUsImV4cCI6MTcxNTU1NTc3NX0.llQyxJHUpqX1BNb3NTJQ96tBgZKiQLT4fySavV2Bas4',
    );
    return ProductModel.fromJson(data);
  }
}
