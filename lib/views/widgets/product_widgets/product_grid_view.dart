import 'package:faith_pharm/models/product_model.dart';
import 'package:faith_pharm/services/products_serviecs.dart';
import 'package:faith_pharm/views/pages/product_page.dart';
import 'package:faith_pharm/views/widgets/product_widgets/product_card.dart';
import 'package:flutter/material.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({
    super.key,
    required this.categoryId,
  });
  final String categoryId;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: FutureBuilder<List<ProductModel>>(
        future: ProductServices().getAllProducts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (categoryId.isEmpty) {
              List<ProductModel> products = snapshot.data!;
              return GridView.builder(
                  padding: const EdgeInsets.all(0),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                      crossAxisSpacing: 2.5,
                      mainAxisSpacing: 2.5),
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return ProductCard(
                      productModel: products[index],
                      ontap: () => Navigator.pushNamed(
                        context,
                        ProductPage.routeName,
                        arguments: products[index],
                      ),
                    );
                  });
            } else {
              List<ProductModel> products = snapshot.data!
                  .where((element) => element.categoryId.contains(categoryId))
                  .toList();
              return GridView.builder(
                  padding: const EdgeInsets.all(0),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                      crossAxisSpacing: 2.5,
                      mainAxisSpacing: 2.5),
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return ProductCard(
                      productModel: products[index],
                      ontap: () => Navigator.pushNamed(
                        context,
                        ProductPage.routeName,
                        arguments: products[index],
                      ),
                    );
                  });
            }
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
