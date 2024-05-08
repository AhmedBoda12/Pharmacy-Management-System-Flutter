import 'package:faith_pharm/views/widgets/category_widgets/category_card.dart';
import 'package:flutter/material.dart';

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.9,
              crossAxisSpacing: 1,
              mainAxisSpacing: 1),
          physics: const ScrollPhysics(),
          shrinkWrap: true,
          itemCount: 2,
          itemBuilder: (context, index) {
            return const CategoryCard(
              categoryName: 'Skin Care',
              image: 'assets/skin.png',
              color: Color(0xFF41C9E2),
            );
          }),
    );
  }
}
