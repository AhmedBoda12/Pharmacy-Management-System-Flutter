import 'package:flutter/material.dart';

class HeadlineRow extends StatelessWidget {
  const HeadlineRow({
    super.key,
    required this.text,
    this.onPrees,
  });
  final String text;
  final void Function()? onPrees;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          TextButton(onPressed: onPrees, child: const Text('Exploar More'))
        ],
      ),
    );
  }
}
