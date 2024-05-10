import 'package:faith_pharm/views/pages/all_products_page.dart';
import 'package:faith_pharm/views/widgets/category_widgets/category_row.dart';
import 'package:faith_pharm/views/widgets/headline_row.dart';
import 'package:faith_pharm/views/widgets/home_page_widgets/home_page_stack.dart';
import 'package:faith_pharm/views/widgets/product_widgets/product_grid_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 300,
                child: HomePageStack(),
              ),
              const SizedBox(
                height: 40,
              ),
              const HeadlineRow(
                text: 'Exploar Categories',
              ),
              const SizedBox(
                height: 5,
              ),
              const CategoryRow(),
              const SizedBox(
                height: 10,
              ),
              HeadlineRow(
                text: 'Recommended',
                onPrees: () =>
                    Navigator.pushNamed(context, AllProductsPage.routeName),
              ),
              const ProductGridView()
            ],
          ),
        ),
      ),
    );
  }
}
