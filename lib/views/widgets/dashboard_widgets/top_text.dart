// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class top_text_dashboard extends StatelessWidget {
  const top_text_dashboard({
    super.key,
    required this.lastUpdate,
  });
  final String lastUpdate;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Faith Pharmacy",
          style: TextStyle(color: Colors.white, fontSize: 40),
        ),
        Text(
          "Last Update: $lastUpdate",
          style: TextStyle(color: Colors.grey, fontSize: 15),
        ),
      ],
    );
  }
}
