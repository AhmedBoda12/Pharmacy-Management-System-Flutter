import 'package:faith_pharm/models/product_model.dart';
import 'package:faith_pharm/services/products_serviecs.dart';
import 'package:faith_pharm/views/widgets/add_item_widgets/add_product_form.dart';
import 'package:faith_pharm/views/widgets/custom_search_bar.dart';
import 'package:faith_pharm/views/widgets/manage_widgets.dart/product_card.dart';
import 'package:flutter/material.dart';

class ManageProductsPage extends StatefulWidget {
  const ManageProductsPage({super.key});

  @override
  State<ManageProductsPage> createState() => _ManageProductsPageState();
}

class _ManageProductsPageState extends State<ManageProductsPage> {
  List<ProductModel> _products = [];

  @override
  void initState() {
    super.initState();
    _loadProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const CustomSearchBar(hint: "Which product do you search?"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (BuildContext context) {
                return Padding(
                  padding: EdgeInsets.only(
                      top: 15,
                      left: 15,
                      right: 15,
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: const AddProductForm(),
                );
              });
        },
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: _products.isNotEmpty
          ? ListView.builder(
              itemCount: _products.length,
              itemBuilder: (context, index) {
                return AdminProductCard(
                  productModel: _products[index],
                  onDelete: () => _deleteProduct(index),
                );
              },
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }

  Future<void> _loadProducts() async {
    try {
      final products = await ProductServices().getAllProducts();
      setState(() {
        _products = products;
      });
    } catch (e) {
      // Handle error
    }
  }

  Future<void> _deleteProduct(int index) async {
    try {
      await ProductServices().deleteProduct(productId: _products[index].id!);
      setState(() {
        _products.removeAt(index);
      });
    } catch (e) {
      // Handle error
    }
  }
}
