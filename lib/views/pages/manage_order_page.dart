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
        backgroundColor: Colors.indigo,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: SizedBox(
                width: 300,
                child: CustomSearchBar(hint: "Which order do you search?")),
          ),
        ],
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
            OrderCard(
                orderId: 2,
                orderDate: "7 Aug 2024",
                orderItemNum: 5,
                orderPrice: 55.5),
            OrderCard(
                orderId: 3,
                orderDate: "7 Aug 2024",
                orderItemNum: 5,
                orderPrice: 55.5),
            OrderCard(
                orderId: 4,
                orderDate: "7 Aug 2024",
                orderItemNum: 5,
                orderPrice: 55.5),
            OrderCard(
                orderId: 5,
                orderDate: "7 Aug 2024",
                orderItemNum: 5,
                orderPrice: 55.5),
            OrderCard(
                orderId: 6,
                orderDate: "7 Aug 2024",
                orderItemNum: 5,
                orderPrice: 55.5),
            OrderCard(
                orderId: 7,
                orderDate: "7 Aug 2024",
                orderItemNum: 5,
                orderPrice: 55.5),
            OrderCard(
                orderId: 8,
                orderDate: "7 Aug 2024",
                orderItemNum: 5,
                orderPrice: 55.5),
          ],
        ),
      ),
    );
  }
}
