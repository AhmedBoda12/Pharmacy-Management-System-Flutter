import 'package:faith_pharm/views/widgets/cart_widgets/cart_card.dart';
import 'package:flutter/material.dart';

class CartListViewBuilder extends StatelessWidget {
  const CartListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const CartCard();
      },
    );
  }
}
