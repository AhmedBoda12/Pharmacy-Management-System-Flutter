import 'package:flutter/material.dart';

class category_card extends StatelessWidget {
  const category_card({
    required this.category_item_num,
    required this.category_name,
    super.key,
  });
  final String category_name;
  final int category_item_num;

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
                  Text("$category_name",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  Text("number of items : $category_item_num",
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
