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
            order_card(
                order_id: 1,
                order_date: "7 Aug 2024",
                order_item_num: 5,
                order_price: 55.5),
            order_card(
                order_id: 2,
                order_date: "7 Aug 2024",
                order_item_num: 5,
                order_price: 55.5),
            order_card(
                order_id: 3,
                order_date: "7 Aug 2024",
                order_item_num: 5,
                order_price: 55.5),
            order_card(
                order_id: 4,
                order_date: "7 Aug 2024",
                order_item_num: 5,
                order_price: 55.5),
            order_card(
                order_id: 5,
                order_date: "7 Aug 2024",
                order_item_num: 5,
                order_price: 55.5),
            order_card(
                order_id: 6,
                order_date: "7 Aug 2024",
                order_item_num: 5,
                order_price: 55.5),
            order_card(
                order_id: 7,
                order_date: "7 Aug 2024",
                order_item_num: 5,
                order_price: 55.5),
            order_card(
                order_id: 8,
                order_date: "7 Aug 2024",
                order_item_num: 5,
                order_price: 55.5),
          ],
        ),
      ),
    );
  }
}
