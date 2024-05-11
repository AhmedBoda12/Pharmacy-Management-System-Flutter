// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:faith_pharm/views/widgets/add_item_widgets/categories_drop_down.dart';
import 'package:faith_pharm/views/widgets/add_item_widgets/image_button.dart';
import 'package:faith_pharm/views/widgets/add_item_widgets/text_field.dart';
import 'package:faith_pharm/views/widgets/add_item_widgets/title_lable.dart';
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
                        onPressed: () {
                          showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              builder: (BuildContext context) {
                                return Padding(
                                  padding: EdgeInsets.only(
                                      left: 20,
                                      right: 20,
                                      top: 15,
                                      bottom: MediaQuery.of(context)
                                          .viewInsets
                                          .bottom),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const TextTitle(title_text: "Title"),
                                        const BottomSheetTextField(),
                                        const TextTitle(title_text: "Size"),
                                        const BottomSheetTextField(),
                                        const TextTitle(title_text: "Price"),
                                        const BottomSheetTextField(),
                                        const TextTitle(
                                            title_text: "Description"),
                                        const BottomSheetTextField(),
                                        const Padding(
                                          padding: EdgeInsets.only(top: 15),
                                          child: Categories(),
                                        ),
                                        const AddImageButton(),
                                        Center(
                                          child: FilledButton(
                                            onPressed: () {},
                                            child: const Text(
                                              "Submit",
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
