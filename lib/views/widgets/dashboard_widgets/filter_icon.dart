// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class filter_icon extends StatefulWidget {
  const filter_icon({
    super.key,
  });

  @override
  State<filter_icon> createState() => _filter_iconState();
}

class _filter_iconState extends State<filter_icon> {
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