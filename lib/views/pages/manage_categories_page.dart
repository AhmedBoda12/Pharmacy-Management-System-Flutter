import 'package:faith_pharm/models/category_model.dart';
import 'package:faith_pharm/services/category_services.dart';
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
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        title: const CustomSearchBar(hint: "Which category do you search?"),
      ),
      floatingActionButton: const FloatAction(),
      body: FutureBuilder(
          future: CategoryServices().getAllCategories(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<CategotyModel> categories = snapshot.data!;
              return ListView.builder(
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return CategoryCard(category: categories[index]);
                },
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
