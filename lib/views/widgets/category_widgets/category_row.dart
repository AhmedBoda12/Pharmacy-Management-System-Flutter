import 'package:faith_pharm/models/category_model.dart';
import 'package:faith_pharm/services/category_services.dart';
import 'package:faith_pharm/views/pages/category_products_page.dart';
import 'package:faith_pharm/views/widgets/category_widgets/category_card.dart';
import 'package:flutter/material.dart';

class CategoryRow extends StatelessWidget {
  const CategoryRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: FutureBuilder(
          future: CategoryServices().getAllCategories(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<CategotyModel> categories = snapshot.data!;
              return Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ...categories.map((e) {
                    return CategoryCard(
                      onTap: () => Navigator.pushNamed(
                        context,
                        CategoryProducts.routeName,
                        arguments: e,
                      ),
                      categotyModel: e,
                      image: 'assets/skin.png',
                      color: const Color(0xFF41C9E2),
                    );
                  })
                ],
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}
