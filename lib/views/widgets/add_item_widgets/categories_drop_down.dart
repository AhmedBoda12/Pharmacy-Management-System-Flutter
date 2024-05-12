import 'package:faith_pharm/services/category_services.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({
    super.key,
  });

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: CategoryServices().getAllCategories(),
        builder: (context, snapshot) {
          return const DropdownMenu(
              menuStyle: MenuStyle(),
              hintText: "Category",
              dropdownMenuEntries: [
                DropdownMenuEntry(value: "Cate1", label: ""),
                DropdownMenuEntry(value: "Cate2", label: "Cat2"),
                DropdownMenuEntry(value: "Cate2", label: "Cat2"),
              ]);
        });
  }
}
