import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({
    required this.orderId,
    required this.orderDate,
    required this.orderItemNum,
    required this.orderPrice,
    super.key,
  });
  final int orderId;
  final String orderDate;
  final int orderItemNum;
  final double orderPrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(color: Colors.black26, spreadRadius: 1, blurRadius: 6)
            ]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Order Number: #$orderId ",
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold)),
                  Text("Order Date: $orderDate ",
                      style: const TextStyle(fontSize: 15, color: Colors.grey)),
                  Text("Number of items : $orderItemNum ",
                      style: const TextStyle(fontSize: 15, color: Colors.grey)),
                  Text("Total Price : $orderPrice L.E",
                      style: const TextStyle(fontSize: 15, color: Colors.grey)),
                ],
              ),
              Column(
                children: [
                  FilledButton(
                    onPressed: () {},
                    child: const Text(
                      "Edit",
                    ),
                  ),
                  FilledButton(
                    onPressed: () {},
                    child: const Text(
                      "Delete",
                    ),
                  ),
                  FilledButton(
                    onPressed: () {},
                    child: const Text(
                      " Print ",
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
