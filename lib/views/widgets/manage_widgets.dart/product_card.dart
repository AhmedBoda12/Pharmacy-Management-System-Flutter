// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:faith_pharm/views/widgets/add_item_widgets/categories_drop_down.dart';
import 'package:faith_pharm/views/widgets/add_item_widgets/image_button.dart';
import 'package:faith_pharm/views/widgets/add_item_widgets/text_field.dart';
import 'package:faith_pharm/views/widgets/add_item_widgets/title_lable.dart';
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
        padding: EdgeInsets.only(top: 5, left: 10, right: 10),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(color: Colors.black26, spreadRadius: 1, blurRadius: 6)
              ]),
          child: Padding(
            padding: EdgeInsets.all(8.0),
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
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return Padding(
                                  padding: EdgeInsets.only(
                                      top: 15, left: 15, right: 15, bottom: 15),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        TextTitle(title_text: "Title"),
                                        Text_field(),
                                        TextTitle(title_text: "Size"),
                                        Text_field(),
                                        TextTitle(title_text: "Price"),
                                        Text_field(),
                                        TextTitle(title_text: "Description"),
                                        Text_field(),
                                        Padding(
                                          padding: EdgeInsets.only(top: 15),
                                          child: Categories(),
                                        ),
                                        AddImageButton(),
                                        Center(
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.indigo),
                                            onPressed: () {},
                                            child: const Text(
                                              "Summit Edit",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              });
                        },
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
