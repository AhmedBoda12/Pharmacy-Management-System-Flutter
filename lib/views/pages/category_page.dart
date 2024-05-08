import 'package:faith_pharm/views/widgets/category_widgets/category_grid_view.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  static const String routeName = 'CategoryPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Explore categories',
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      body: const SafeArea(child: CategoryGridView()),
    );
  }
}
