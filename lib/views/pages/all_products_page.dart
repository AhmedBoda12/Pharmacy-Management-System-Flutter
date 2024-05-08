import 'package:faith_pharm/views/widgets/custom_search_bar.dart';
import 'package:faith_pharm/views/widgets/product_widgets/product_grid_view.dart';
import 'package:faith_pharm/views/widgets/product_widgets/products_chips.dart';
import 'package:flutter/material.dart';

class AllProductsPage extends StatelessWidget {
  const AllProductsPage({super.key});
  static const String routeName = 'AllProductsPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const CustomSearchBar(
          hint: 'What are you looking for?',
        ),
      ),
      body: ListView(
        children: const [
          AllProductsChips(),
          ProductGridView(),
        ],
      ),
    );
  }
}
