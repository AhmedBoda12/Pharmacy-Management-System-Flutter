import 'package:faith_pharm/models/category_model.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.category,
  });
  final CategotyModel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(color: Colors.black26, spreadRadius: 1, blurRadius: 6)
            ]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(category.categoryname,
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold)),
                  Text(
                    "Category ID: ${category.id!.substring(0, 10)}",
                    style: const TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ],
              ),
              Column(
                children: [
                  FilledButton(
                    onPressed: () {},
                    child: const Text(
                      " Edit ",
                    ),
                  ),
                  FilledButton(
                    onPressed: () {},
                    child: const Text(
                      "Delete",
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
