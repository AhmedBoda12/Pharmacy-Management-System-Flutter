import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    required this.hint,
  });
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(15),
          filled: true,
          focusColor: Colors.white,
          fillColor: Colors.white,
          hintText: hint,
          prefixIcon:
              Icon(Icons.search_rounded, color: Theme.of(context).primaryColor),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}
