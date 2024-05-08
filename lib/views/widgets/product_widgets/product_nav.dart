import 'package:faith_pharm/views/widgets/custom_elevated_icon.dart';
import 'package:flutter/material.dart';

class ProductBottomNav extends StatelessWidget {
  const ProductBottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomElevatedButtonIcon(
              text: 'Checkout',
              icon: const Icon(Icons.shopping_cart_checkout),
              onPress: () {},
            ),
            CustomElevatedButtonIcon(
              text: 'Add to cart',
              icon: const Icon(Icons.add_shopping_cart_sharp),
              onPress: () {},
            ),
          ],
        ),
      ),
    );
  }
}
