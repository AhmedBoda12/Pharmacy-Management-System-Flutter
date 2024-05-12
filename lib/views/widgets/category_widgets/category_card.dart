import 'package:faith_pharm/models/category_model.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.image,
    required this.color,
    this.onTap,
    required this.categotyModel,
  });
  final CategotyModel categotyModel;
  final String image;
  final Color color;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        child: Container(
          width: 150,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15),
          ),
          child: SingleChildScrollView(
            child: Column(children: [
              Align(
                alignment: Alignment.topCenter,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    categotyModel.image!,
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Text(
                    categotyModel.categoryname,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
