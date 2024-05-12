import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  const TextTitle({
    required this.titleText,
    super.key,
  });
  final String titleText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Text(
        "$titleText :",
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
