import 'package:faith_pharm/views/widgets/custom_search_bar.dart';
import 'package:faith_pharm/views/widgets/manage_widgets.dart/category_card.dart';
import 'package:faith_pharm/views/widgets/manage_widgets.dart/floating_action.dart';
import 'package:flutter/material.dart';

class ManageCategoriesPage extends StatelessWidget {
  const ManageCategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: SizedBox(
                width: 300,
                child: CustomSearchBar(hint: "Which category do you search?")),
          ),
        ],
      ),
      floatingActionButton: const FloatAction(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            CategoryCard(
              categoryName: "inti boitic",
              categoryItemNum: 10,
            ),
            CategoryCard(
              categoryName: "inti boitic",
              categoryItemNum: 10,
            ),
            CategoryCard(
              categoryName: "inti boitic",
              categoryItemNum: 10,
            ),
            CategoryCard(
              categoryName: "inti boitic",
              categoryItemNum: 10,
            ),
            CategoryCard(
              categoryName: "inti boitic",
              categoryItemNum: 10,
            ),
            CategoryCard(
              categoryName: "inti boitic",
              categoryItemNum: 10,
            ),
            CategoryCard(
              categoryName: "inti boitic",
              categoryItemNum: 10,
            ),
            CategoryCard(
              categoryName: "inti boitic",
              categoryItemNum: 10,
            ),
            CategoryCard(
              categoryName: "inti boitic",
              categoryItemNum: 10,
            ),
          ],
        ),
      ),
    );
  }
}
