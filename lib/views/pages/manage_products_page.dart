import 'package:faith_pharm/views/widgets/custom_search_bar.dart';
import 'package:faith_pharm/views/widgets/manage_widgets.dart/floating_action.dart';
import 'package:faith_pharm/views/widgets/manage_widgets.dart/product_card.dart';
import 'package:flutter/material.dart';

class manageProducts extends StatelessWidget {
  const manageProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        actions: const [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: SizedBox(
                width: 300,
                child: CustomSearchBar(hint: "Which product do you search?")),
          ),
        ],
      ),
      floatingActionButton: float_action(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            product_card(product_category: "Cosmetic", product_name: "Oplex", product_price: 19.5, product_stock: 100),
            product_card(product_category: "Cosmetic", product_name: "Oplex", product_price: 19.5, product_stock: 100),
            product_card(product_category: "Cosmetic", product_name: "Oplex", product_price: 19.5, product_stock: 100),
            product_card(product_category: "Cosmetic", product_name: "Oplex", product_price: 19.5, product_stock: 100),
            product_card(product_category: "Cosmetic", product_name: "Oplex", product_price: 19.5, product_stock: 100),
          ]
        )
      )
    );
  }
}