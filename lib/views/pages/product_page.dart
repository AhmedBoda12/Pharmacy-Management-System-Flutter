import 'package:faith_pharm/models/product_model.dart';
import 'package:faith_pharm/services/products_serviecs.dart';
import 'package:faith_pharm/views/widgets/counter_container.dart';
import 'package:faith_pharm/views/widgets/product_widgets/product_nav.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});
  static const String routeName = 'ProductPage';

  @override
  Widget build(BuildContext context) {
    ProductModel productModel =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Badge(
              alignment: Alignment.topRight,
              backgroundColor: Theme.of(context).primaryColor,
              label: const Text('1'),
              child: IconButton(
                padding: const EdgeInsets.all(0),
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  size: 30,
                ),
              ),
            ),
          )
        ],
      ),
      body: FutureBuilder(
          future: ProductServices().getProductById(productModel.id),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        child: Image.network(
                          productModel.image,
                          width: double.infinity,
                          height: 300,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          productModel.title,
                          textAlign: TextAlign.start,
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          productModel.desc,
                          textAlign: TextAlign.start,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${productModel.price} EGP',
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                            const CounterContainer()
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),
      bottomNavigationBar: const ProductBottomNav(),
    );
  }
}
