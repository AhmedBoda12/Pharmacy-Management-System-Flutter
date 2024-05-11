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
    return const DropdownMenu(
        menuStyle: MenuStyle(),
        hintText: "Category",
        dropdownMenuEntries: [
          DropdownMenuEntry(
              value: "Cate1", label: "Cat1"),
          DropdownMenuEntry(
              value: "Cate2", label: "Cat2"),
          DropdownMenuEntry(
              value: "Cate2", label: "Cat2"),
        ]);
  }
}