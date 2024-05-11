import 'package:flutter/material.dart';

class Text_field extends StatelessWidget {
  const Text_field({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TextField(
          decoration: InputDecoration(
    contentPadding: const EdgeInsets.all(5),
    focusColor: Colors.white,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
          ),
        );
  }
}