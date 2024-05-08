import 'package:faith_pharm/views/pages/all_products_page.dart';
import 'package:faith_pharm/views/widgets/category_widgets/category_row.dart';
import 'package:faith_pharm/views/widgets/headline_row.dart';
import 'package:faith_pharm/views/widgets/home_page_widgets/home_page_stack.dart';
import 'package:faith_pharm/views/widgets/product_widgets/product_grid_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: HomePageStack(),
            ),
            SizedBox(
              height: 40,
            ),
            HeadlineRow(
              text: 'Exploar Categories',
            ),
            SizedBox(
              height: 5,
            ),
            CategoryRow(),
            SizedBox(
              height: 10,
            ),
            HeadlineRow(
              text: 'Recommended',
              onPrees: () =>
                  Navigator.pushNamed(context, AllProductsPage.routeName),
            ),
            ProductGridView()
          ],
        ),
      ),
    );
  }
}
