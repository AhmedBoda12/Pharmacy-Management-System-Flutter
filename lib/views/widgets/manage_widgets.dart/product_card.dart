import 'package:faith_pharm/models/product_model.dart';
import 'package:flutter/material.dart';

class AdminProductCard extends StatelessWidget {
  const AdminProductCard(
      {super.key, required this.productModel, required this.onDelete});

  final ProductModel productModel;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(color: Colors.black26, spreadRadius: 1, blurRadius: 6)
              ]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(45),
                          ),
                          child: Image.network(productModel.image),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            productModel.title.substring(0, 10),
                            style: const TextStyle(fontSize: 20),
                          ),
                          Text(
                            "Product Price : ${productModel.price} L.E",
                            style: const TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FilledButton(
                        style: FilledButton.styleFrom(),
                        onPressed: () {},
                        child: const Text(
                          " Edit",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      FilledButton(
                        style: FilledButton.styleFrom(),
                        onPressed: onDelete,
                        child: const Text(
                          "Delete",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  )
                ]),
          ),
        ));
  }
}
