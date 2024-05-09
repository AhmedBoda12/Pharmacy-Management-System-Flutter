import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({
    super.key,
  });

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              if (index > 1) {
                index--;
              }
            });
          },
          icon: const Icon(Icons.remove),
        ),
        Text(
          '$index',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        IconButton(
          onPressed: () {
            setState(() {
              index++;
            });
          },
          icon: const Icon(Icons.add),
        ),
      ],
    );
  }
}
