import 'package:flutter/material.dart';

class FilterIcon extends StatefulWidget {
  const FilterIcon({
    super.key,
  });

  @override
  State<FilterIcon> createState() => _FilterIconState();
}

class _FilterIconState extends State<FilterIcon> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: const Icon(
        Icons.sort,
        color: Colors.white,
        size: 40,
      ),
    );
  }
}
