import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  const TextTitle({
    required this.title_text,
    super.key,
  });
  final String title_text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Text(
        "$title_text :",
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}