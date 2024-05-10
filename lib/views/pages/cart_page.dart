import 'package:faith_pharm/views/pages/checkout_page.dart';
import 'package:faith_pharm/views/widgets/cart_widgets/cart_list_view.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  static const String routeName = 'CartPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: Text(
          'My Cart',
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(mainAxisSize: MainAxisSize.max, children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  'Below are the items in your cart',
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            const SizedBox(
              height: 400,
              child: CartListViewBuilder(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total:',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  Text(
                    '50 EGP',
                    style: Theme.of(context).textTheme.headlineMedium,
                  )
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: FilledButton(
                  style: FilledButton.styleFrom(
                    elevation: 4,
                  ),
                  onPressed: () =>
                      Navigator.pushNamed(context, CheckoutPage.routeName),
                  child: const Text('Checkout'),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
