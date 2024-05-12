import 'package:flutter/material.dart';

class OrderHistoryCard extends StatelessWidget {
  final String orderDate;
  final String orderTime;
  final String orderStatus;
  final List<String> orderItems;

  const OrderHistoryCard({
    super.key,
    required this.orderDate,
    required this.orderTime,
    required this.orderStatus,
    required this.orderItems,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Order Date: $orderDate',
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              'Order Time: $orderTime',
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              'Order Status: $orderStatus',
              style: const TextStyle(fontSize: 16),
            ),
            Wrap(
              spacing: 5.0,
              runSpacing: -8,
              children: orderItems.map((item) {
                return Chip(
                  label: Text(item),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
