import 'package:flutter/material.dart';

class TopTextDashboard extends StatelessWidget {
  const TopTextDashboard({
    super.key,
    required this.lastUpdate,
  });
  final String lastUpdate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Faith Pharmacy",
            style: TextStyle(color: Colors.white, fontSize: 40),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Last Update: $lastUpdate",
              style: const TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
