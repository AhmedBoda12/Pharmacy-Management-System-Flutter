import 'package:faith_pharm/views/widgets/custom_search_bar.dart';
import 'package:faith_pharm/views/widgets/manage_widgets.dart/floating_action.dart';
import 'package:faith_pharm/views/widgets/manage_widgets.dart/order_card.dart';
import 'package:flutter/material.dart';

class ManageOrdersPage extends StatelessWidget {
  const ManageOrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const CustomSearchBar(hint: "Which order do you search?"),
      ),
      floatingActionButton: const FloatAction(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            OrderCard(
                orderId: 1,
                orderDate: "7 Aug 2024",
                orderItemNum: 5,
                orderPrice: 55.5),
          ],
        ),
      ),
    );
  }
}
