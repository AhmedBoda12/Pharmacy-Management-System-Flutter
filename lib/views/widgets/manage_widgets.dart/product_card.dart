// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';

class product_card extends StatelessWidget {
  const product_card(
      {required this.product_category,
      this.product_concentration = 500,
      required this.product_name,
      required this.product_price,
      required this.product_stock,
      super.key});
  final String product_name;
  final double product_price;
  final int product_concentration;
  final String product_category;
  final int product_stock;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
        child: Container(
          width: double.infinity,
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
                            child: Image.asset(
                                "assets/images_dashboard/manage_product.png")),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product_name,
                            style: const TextStyle(fontSize: 20),
                          ),
                          Text(
                            "Stock : $product_stock",
                            style: const TextStyle(fontSize: 15),
                          ),
                          Text(
                            "Product Price : $product_price L.E",
                            style: const TextStyle(fontSize: 15),
                          ),
                          Text(
                            "Product Category : $product_category ",
                            style: const TextStyle(fontSize: 15),
                          ),
                          Text(
                            "Product Concentration : $product_concentration ",
                            style: const TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo),
                        onPressed: () {},
                        child: const Text(
                          " Edite ",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo),
                        onPressed: () {},
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
