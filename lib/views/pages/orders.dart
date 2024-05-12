import 'package:flutter/material.dart';
import '../widgets/profile_widgets/order_history_card.dart';

class OrderListItems extends StatelessWidget {
  static const String routeName = 'OrderListItems';

  const OrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: Text("My Orders",
            style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: 10, // Replace with the actual number of orders
        itemBuilder: (context, index) {
          return const OrderHistoryCard(
            orderDate: 'May 10, 2024', // Replace with the actual order date
            orderTime: '10:00 AM', // Replace with the actual order time
            orderStatus: 'Delivered', // Replace with the actual order status
            orderItems: [
              'Item 1',
              'Item 2',
              'Item 3',
            ], // Replace with the actual order items
          );
        },
      ),
    );
  }
}
