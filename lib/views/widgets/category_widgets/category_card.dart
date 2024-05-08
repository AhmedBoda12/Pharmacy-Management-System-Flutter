import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.categoryName,
    required this.image,
    required this.color,
    this.onTap,
  });
  final String categoryName;
  final String image;
  final Color color;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3),
        child: Container(
          width: 120,
          height: 100,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Stack(clipBehavior: Clip.hardEdge, children: [
            Align(
              alignment: Alignment.topCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  image,
                  width: 80,
                  height: 80,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  categoryName,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
