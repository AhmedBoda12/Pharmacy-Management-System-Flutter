import 'package:faith_pharm/views/widgets/checkout_widgets/checkout_form.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});
  static const String routeName = 'CheckoutPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Checkout',
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CheckoutForm(),
            ],
          ),
        ),
      ),
    );
  }
}
