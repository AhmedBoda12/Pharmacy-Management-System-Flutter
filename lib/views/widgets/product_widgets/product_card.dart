// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:faith_pharm/models/product_model.dart';
import 'package:intl/intl.dart';

class ProductCard extends StatelessWidget {
  ProductCard({
    Key? key,
    this.ontap,
    required this.productModel,
  }) : super(key: key);
  final ProductModel productModel;
  final void Function()? ontap;
  final format = DateFormat.yMd();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Card(
        surfaceTintColor: Colors.white,
        shadowColor: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 4,
        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: Image.network(
                    productModel.image,
                    fit: BoxFit.cover,
                  )
                  //  ClipRRect(
                  //   child: Image.network(productModel.image),
                  // ),
                  ),
            ),
            const SizedBox(
              height: 5,
            ),
            ProductCardRow(
              text: productModel.title.substring(0, 10),
              textColor: Theme.of(context).colorScheme.primary,
            ),
            ProductCardRow(
              text: '${productModel.price} EGP',
              iconText: format.format(productModel.createdAt),
              icon: Icon(
                Icons.schedule_rounded,
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
      ),
    );
  }
}

class ProductCardRow extends StatelessWidget {
  const ProductCardRow({
    super.key,
    required this.text,
    this.iconText,
    this.icon,
    required this.textColor,
  });
  final String text;
  final String? iconText;
  final Icon? icon;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
                color: textColor, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          icon == null
              ? const SizedBox(
                  width: 1,
                )
              : Row(
                  children: [
                    icon!,
                    Text(iconText!),
                  ],
                )
        ],
      ),
    );
  }
}
