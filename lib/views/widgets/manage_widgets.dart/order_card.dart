import 'package:flutter/material.dart';

class order_card extends StatelessWidget {
  const order_card({
    required this.order_id,
    required this.order_date,
    required this.order_item_num,
    required this.order_price,
    super.key,
  });
  final int order_id;
  final String order_date;
  final int order_item_num;
  final double order_price;


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
                  Text("Order Number: #$order_id ",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  Text("Order Date: $order_date ",
                      style:
                          TextStyle(fontSize: 15, color: Colors.grey)),
                  Text("Number of items : $order_item_num ",
                      style: TextStyle(fontSize: 15, color: Colors.grey)),
                  Text("Total Price : $order_price L.E",
                      style: TextStyle(fontSize: 15, color: Colors.grey)),
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo),
                    onPressed: () {},
                    child: Text(
                      " Edite ",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo),
                    onPressed: () {},
                    child: Text(
                      "Delete",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo),
                    onPressed: () {},
                    child: Text(
                      " Print ",
                      style: TextStyle(color: Colors.white),
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
