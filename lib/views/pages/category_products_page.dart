import 'package:faith_pharm/models/category_model.dart';
import 'package:faith_pharm/views/widgets/custom_search_bar.dart';
import 'package:faith_pharm/views/widgets/product_widgets/product_grid_view.dart';
import 'package:faith_pharm/views/widgets/product_widgets/products_chips.dart';
import 'package:flutter/material.dart';

class CategoryProducts extends StatelessWidget {
  const CategoryProducts({super.key});
  static const String routeName = 'CategoryProducts';
  @override
  Widget build(BuildContext context) {
    final CategotyModel categotyModel =
        ModalRoute.of(context)!.settings.arguments as CategotyModel;
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
        children: [
          const SizedBox(
            height: 10,
          ),
          ProductGridView(
            categoryId: categotyModel.id!,
          ),
        ],
      ),
    );
  }
}
