import 'package:faith_pharm/views/widgets/counter_container.dart';
import 'package:faith_pharm/views/widgets/product_widgets/product_nav.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});
  static const String routeName = 'ProductPage';
  @override
  Widget build(BuildContext context) {
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                child: Image.network(
                  'https://images.unsplash.com/photo-1566958769312-82cef41d19ef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzF8fHByb2R1Y3RzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
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
                  'Product name',
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
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do.',
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
                      '50.00 EGP',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    const CounterContainer()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const ProductBottomNav(),
    );
  }
}
