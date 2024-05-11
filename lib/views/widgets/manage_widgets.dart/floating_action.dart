import 'package:flutter/material.dart';

class FloatAction extends StatelessWidget {
  const FloatAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Theme.of(context).colorScheme.primary,
      child: const Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }
}
