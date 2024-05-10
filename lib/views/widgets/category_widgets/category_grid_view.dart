import 'package:faith_pharm/models/category_model.dart';
import 'package:faith_pharm/services/category_services.dart';
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
      child: FutureBuilder(
          future: CategoryServices().getAllCategories(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<CategotyModel> categories = snapshot.data!;
              return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.5,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 5),
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return CategoryCard(
                      categotyModel: categories[index],
                      image: 'assets/skin.png',
                      color: const Color(0xFF41C9E2),
                    );
                  });
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}
