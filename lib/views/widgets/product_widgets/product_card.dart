import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Colors.white,
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 4,
      child: Column(
        children: [
          const Expanded(
            child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                child: Placeholder()),
          ),
          const SizedBox(
            height: 5,
          ),
          ProductCardRow(
            text: 'Product',
            iconText: '5 min',
            icon: Icon(
              Icons.schedule_rounded,
              size: 15,
              color: Theme.of(context).primaryColor,
            ),
            textColor: Theme.of(context).colorScheme.primary,
          ),
          ProductCardRow(
            text: r'40 EGP',
            iconText: 'Assuit',
            icon: Icon(
              Icons.location_on_rounded,
              size: 15,
              color: Theme.of(context).primaryColor,
            ),
            textColor: Theme.of(context).colorScheme.onBackground,
          ),
          const SizedBox(
            height: 5,
          ),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
            label: const Text('Add to cart'),
          ),
          const SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}

class ProductCardRow extends StatelessWidget {
  const ProductCardRow({
    super.key,
    required this.text,
    @required this.iconText,
    @required this.icon,
    required this.textColor,
  });
  final String text;
  final String? iconText;
  final Icon? icon;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
                color: textColor, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [icon!, Text(iconText!)],
          )
        ],
      ),
    );
  }
}
