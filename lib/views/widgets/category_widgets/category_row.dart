import 'package:faith_pharm/views/widgets/category_widgets/category_card.dart';
import 'package:flutter/material.dart';

class CategoryRow extends StatelessWidget {
  const CategoryRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CategoryCard(
            categoryName: 'Skin Care',
            image: 'assets/skin.png',
            color: Color(0xff41C9E2),
          ),
        ],
      ),
    );
  }
}
