import 'package:flutter/material.dart';

class float_action extends StatelessWidget {
  const float_action({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Colors.indigo,
      child: Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }
}